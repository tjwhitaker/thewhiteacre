const sounds = new Howl({
  src: [
    "/static/output.m4a",
    "/static/output.mp3",
    "/static/output.ac3",
    "/static/output.ogg",
  ],
  sprite: {
    "bass.1.1": [6000, 4372.607709750568],
    "bass.1.2": [12000, 4363.90022675737],
    "bass.1.3": [18000, 4378.412698412699],
    "bass.1.4": [24000, 4363.90022675737],
    "bass.1.5": [30000, 4366.802721088433],
    "bass.1.6": [36000, 4372.607709750568],
    "bass.1.7": [42000, 4372.607709750568],
    "bass.1.8": [48000, 4363.900226757366],
    "bass.1.9": [54000, 4381.315192743763],
    "bass.1.10": [0, 4363.90022675737],
    "drum.1.1": [66000, 4365.3514739228995],
    "drum.1.2": [72000, 4381.31519274377],
    "drum.1.3": [84000, 4375.5102040816355],
    "drum.1.4": [84000, 4375.5102040816355],
    "drum.1.5": [90000, 4366.802721088433],
    "drum.1.6": [96000, 4372.607709750568],
    "drum.1.7": [102000, 4365.3514739228995],
    "drum.1.8": [108000, 4365.3514739228995],
    "drum.1.9": [114000, 4365.3514739228995],
    "drum.1.10": [60000, 4375.5102040816355],
    "sounds.1.1": [156000, 4365.351473922914],
    "sounds.1.2": [162000, 4365.351473922914],
    "sounds.1.3": [168000, 4365.351473922914],
    "sounds.1.4": [174000, 4365.351473922914],
    "sounds.1.5": [180000, 4365.351473922914],
    "sounds.1.6": [186000, 4381.315192743756],
    "sounds.1.7": [192000, 4365.351473922914],
    "sounds.1.8": [198000, 4365.351473922914],
    "sounds.1.9": [204000, 4365.351473922914],
    "sounds.1.10": [120000, 4365.3514739228995],
    "sounds.1.11": [126000, 4365.351473922914],
    "sounds.1.12": [132000, 4365.351473922914],
    "sounds.1.13": [138000, 4365.351473922914],
    "sounds.1.14": [144000, 4365.351473922914],
    "sounds.1.15": [150000, 4365.351473922914],
  },
})

// loop sequencer
var intervalID = null
var activeBass = ""
var activeDrum = ""
var activeMelody = ""
var isPlaying = false
const tempo = 4365
var time = 4365

var bar = new ProgressBar.Line(".sequencer", {
  strokeWidth: 3,
  duration: time,
  easing: "linear",
  color: "#000",
  trailColor: "#eee",
  trailWidth: 1,
  svgStyle: { width: "100%", height: "100%", display: "block" },
})

function scheduleSound(event) {
  if (event.target.classList.contains("pad")) {
    event.preventDefault()

    if (event.target.classList.contains("active")) {
      if (event.target.classList.contains("bass")) {
        activeBass = ""
      }
      if (event.target.classList.contains("drum")) {
        activeDrum = ""
      }
      if (event.target.classList.contains("melody")) {
        activeMelody = ""
      }
      event.target.classList.add("unpending")
      event.target.classList.remove("active")
    } else {
      if (event.target.classList.contains("bass")) {
        let pendings = document.querySelectorAll(".bass.pending")
        pendings.forEach((pending) => {
          pending.classList.remove("pending")
        })
        activeBass = event.target.dataset.sound
      } else if (event.target.classList.contains("drum")) {
        let pendings = document.querySelectorAll(".drum.pending")
        pendings.forEach((pending) => {
          pending.classList.remove("pending")
        })
        activeDrum = event.target.dataset.sound
      } else if (event.target.classList.contains("melody")) {
        let pendings = document.querySelectorAll(".sound.pending")
        pendings.forEach((pending) => {
          pending.classList.remove("pending")
        })

        activeMelody = event.target.dataset.sound
      }

      event.target.classList.add("pending")
    }
  }
}

function cleanButtons() {
  let pads = document.querySelectorAll(".pad")

  pads.forEach((pad) => {
    if (
      pad.dataset.sound != activeBass &&
      pad.dataset.sound != activeDrum &&
      pad.dataset.sound != activeMelody
    ) {
      pad.classList.remove("active")
      pad.classList.remove("unpending")
    }
  })
}

function startSequencer() {
  if (!isPlaying) {
    isPlaying = true
    bar.set(0)
    cleanButtons()

    sounds.play(activeBass)
    sounds.play(activeDrum)
    sounds.play(activeMelody)

    changeTempo()

    let pending = document.querySelectorAll(".pending")

    pending.forEach((item) => {
      item.classList.remove("pending")
      item.classList.add("active")
    })

    bar.animate(1, { duration: time })

    intervalID = setInterval(function () {
      bar.set(0)
      cleanButtons()

      sounds.play(activeBass)
      sounds.play(activeDrum)
      sounds.play(activeMelody)

      changeTempo()

      let pending = document.querySelectorAll(".pending")

      pending.forEach((item) => {
        item.classList.remove("pending")
        item.classList.add("active")
      })

      bar.animate(1, { duration: time })
    }, time)
  }
}

function stopSequencer() {
  clearInterval(intervalID)
  bar.set(0)
  sounds.stop()
  isPlaying = false
}

function changeTempo() {
  v = document.querySelector(".tempo input").value
  rate = v / 100
  time = tempo / rate
  sounds.rate(rate)
}

const launchpad = document.querySelector(".launchpad")
const playButton = document.querySelector(".play")
const stopButton = document.querySelector(".stop")

launchpad.addEventListener("click", scheduleSound)
playButton.addEventListener("click", startSequencer)
stopButton.addEventListener("click", stopSequencer)
