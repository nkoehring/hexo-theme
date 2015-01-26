class App
    constructor: ->
        @footerScrollDynamics()
        @exchangeTimeInfo()

    footerScrollDynamics: ->
        footer = document.getElementById("page-footer")
        footer.classList.add("hidden")

        window.addEventListener "scroll", (evt)->
            if evt.target is document
                if window.scrollY > 0
                    footer.classList.remove("hidden")
                else
                    footer.classList.add("hidden")

    exchangeTimeInfo: ->
        elements = document.querySelectorAll("#content time.meta")
        for el in elements
            datestring = el.attributes["datetime"].value
            continue if(!datestring)

            date = new Date(datestring)
            el.innerHTML = @fromNow(date)

    fromNow: (date)->
        now = Math.ceil((new Date).getTime()/1000)
        secs = now - Math.ceil(date.getTime()/1000)
        
        prefix = if secs > 0 then "" else "in "
        suffix = if secs <= 0 then "" else " ago"

        minutes = Math.floor( secs / 60 )
        hours =   Math.floor( secs / 3600 )
        days =    Math.floor( secs / 3600 / 24 )
        weeks =   Math.floor( days / 7 )
        months =  Math.floor( days / 30 )  # quite rough, isn't it?
        # 400 years have 146097 days (taking into account leap year rules)
        years =   Math.floor( days * 400 / 146097 )

        data = if years > 0
            {value: years, unit: "year"}
        else if months > 0
            {value: months, unit: "month"}
        else if weeks > 0
            {value: weeks, unit: "week"}
        else if days > 0
            {value: days, unit: "day"}
        else if hours > 0
            {value: hours, unit: "hour"}
        else if minutes > 0
            {value: minutes, unit: "minute"}
        else
            {value: secs, unit: "second"}

        output = prefix
        output += data.value
        output += " " + if data.value is 1 then data.unit else data.unit + "s"
        output += suffix


document.addEventListener "DOMContentLoaded", -> new App
