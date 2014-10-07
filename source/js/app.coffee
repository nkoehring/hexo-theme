class App
    constructor: ->
        footer = document.getElementById("page-footer")
        footer.classList.add("hidden")

        window.addEventListener "scroll", (evt)->
            if evt.target is document
                if window.scrollY > 0
                    footer.classList.remove("hidden")
                else
                    footer.classList.add("hidden")


document.addEventListener "DOMContentLoaded", -> new App
