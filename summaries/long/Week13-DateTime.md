**Lecture 13: Date and Time**

*   **Introduction: Why Time is Messy in Software**
    *   Mention the initial plan was encryption/security, but timekeeping is critical and often a source of bugs, including security issues.
    *   Timekeeping seems simple initially (kindergarten, middle school), but it's surprisingly complex. Salvador Dali's painting can be a metaphor for this complexity.

*   **Three Key Takeaways (Mention upfront and recap at the end)**
    *   Humans *name* periods of time (days, months, years, hours, seconds) and set the rules. These are human inventions, not laws of nature. Agreement is the hard part.
    *   When in doubt about time zones, use **UTC** (Coordinated Universal Time).
    *   For writing dates and times in computer applications, the **ISO format** (Year-Month-Day Hour:Minute:Second) is highly recommended.

*   **Measuring Time: From Sundials to Atomic Clocks**
    *   Early humans/animals didn't need precise time.
    *   As societies developed, measuring time within a day became useful (e.g., travel).
    *   **Sundials** were early tools (Ancient Egypt, ~3500 years ago, similar era to cuneiform tablets). They measure time based on the sun's position.
    *   More advanced sundials could also function as calendars (Korean example).
    *   **Defining an Hour:** Traditionally, 1/24th of a day. Why 24? Theories exist (dozen for day, dozen for night), but the origin is unclear.
    *   **Mechanical Clocks** (like pendulum clocks) introduced a different way to measure time, based on physics (gravity, mechanics) independent of Earth's rotation.
    *   **Earth's Movements:**
        *   Rotation on axis: Defines the day/night cycle.
        *   Orbit around the sun: Defines the year (time for one orbit). Seasons are due to axial tilt.
        *   Astronomical events like **equinoxes** (equal day/night) and **solstices** (longest/shortest day) are precisely measurable.
    *   **Need for Precision:** Became critical for **navigation**, specifically determining **longitude** (East-West position). Latitude was easier (sun's highest/lowest point).
    *   Precise ship clocks were a major challenge. Pendulum clocks didn't work well on ships due to motion.
    *   The **British Parliament** offered a large prize in the 18th century for an accurate ship clock (chronometer).
    *   The invention of accurate chronometers in the **1700s** significantly improved navigation, allowing ships to travel diverse routes across the ocean.
    *   *Historical Anecdote:* This invention contributed to the **end of the golden age of piracy**, as ships no longer needed to congregate on predictable routes.

*   **Calendars: Human Invention and Disagreement**
    *   Calendar systems are sets of rules for naming days. They are human conventions, not natural laws.
    *   *Complexity Example:* Tokyo to Vancouver flight arriving the day *before* it departs (crossing the International Dateline).
    *   *Historical Complexity Example:* Travel in the 19th century (Stockholm to St. Petersburg). Arriving "a week before" starting due to different calendars being used.
    *   **Major Calendars in Use Historically:**
        *   **Julian Calendar:** Introduced by **Julius Caesar** in **45 BC**. Rule: 365 days, with a leap day (Feb 29) every 4 years. This corrected for the year being slightly longer than 365 days.
        *   **Gregorian Calendar:** Introduced by **Pope Gregory XIII** in the **16th century (1582)**.
    *   **The Problem with the Julian Calendar:** The Julian year (365.25 days on average) was slightly *longer* than the actual solar year (tropical year). The difference is small (~11 minutes/year), but it accumulated over centuries.
    *   Over ~1500 years between Julius Caesar and Pope Gregory, this discrepancy grew to about **10 days**.
    *   **Motivation for Gregorian Reform:** The accumulated error affected the date of the **equinox**, which was crucial for calculating the date of **Easter**. Religious reasons were a strong driver for the change.
    *   **Gregorian Leap Year Rules:** More complex than Julian. A year is a leap year if:
        *   It is divisible by 4,
        *   *UNLESS* it is divisible by 100,
        *   *BUT* it *IS* a leap year if it is divisible by 400.
        *   *Examples:* 1700, 1800, 1900 were *not* leap years. 2000 *was* a leap year.
    *   *Software Relevance:* This rule means a bug related to leap years in code written in 2001 might not manifest until 2100 (a 99-year bug).
    *   **Adoption of the Gregorian Calendar:** Was a long and difficult process, taking over **300 years** (from 1582 to the early 20th century).
        *   Catholic countries adopted it quickly due to the Pope's authority.
        *   Protestant countries like the UK took much longer (~170 years).
        *   The **Russian Empire** was one of the last major entities to switch (after the 1917 revolution, formally in 1918).
        *   *Switching Method:* Involved skipping days. The Soviets skipped 13 days (Jan 31, 1918 was followed by Feb 14, 1918). The number of skipped days varied depending on when the switch happened (10 days initially, 14 days later).
        *   *Historical Anecdote:* The "Old New Year" tradition (celebrating New Year on Feb 14) in ex-Soviet countries is a remnant of the Julian calendar.
        *   *Historical Anecdote:* Sweden's failed attempt at a gradual switch by skipping leap years for 40 years resulted in them being on a unique calendar different from all neighbors for a time. Finland, being part of Sweden and then Russia, ended up using both calendars.
    *   Conclusion: Calendars are human constructs, and agreeing on them has historically been very difficult, leading to centuries of confusion. We are lucky to have a widely agreed-upon standard today.

*   **Time Zones: Political Divisions of Time**
    *   Starting point: 1/24th of a day per hour. Earth is 360 degrees, so theoretically, time zones could be 15-degree slices (360 / 24).
    *   **Political Reality:** Time zones are not strictly based on meridians. Countries and local authorities decide time zone boundaries.
    *   Boundaries are drawn to avoid splitting cities or small countries.
    *   This leads to the complex time zone map we see today.
    *   *Examples of Unusual Time Zones:*
        *   Newfoundland (Canada) uses a half-hour offset.
        *   China uses a single time zone for the entire vast country (theoretically spans 5 zones), leading to sunrise around 10 am in the west. Unofficial local times may exist.
        *   India uses a single time zone with a half-hour offset.
        *   *Historical Example:* Spain uses Central European Time (CET), geographically closer to the UK (GMT/WET). This was a political decision by Franco to align with Nazi Germany and was never changed back.

*   **Daylight Saving Time (DST): Adding Another Layer of Complexity**
    *   Often seen as a "workaround" or "odd clock fiddling."
    *   **Origin:** Proposed earlier (e.g., George Hudson for more daylight after work for bug collecting), but widely adopted during **World War I** (Germany, US) to save energy (coal). The idea was to shift clocks forward in summer to utilize more daylight in the evening, reducing the need for artificial lighting.
    *   **DST vs Standard Time:** The period when clocks are shifted forward is DST; the rest is Standard Time.
    *   Less common near the equator where day length varies less. More common in higher latitudes where seasonal differences are significant.
    *   Whether DST *actually* saves energy today is debated. Modern factors like air conditioning (uses more energy in warmer daylight hours) and efficient LED lighting reduce the impact compared to a century ago. Studies show a small effect (around 1% or less), potentially saving or costing a small amount per household.
    *   **The Hassle:** A major problem is the disruption caused by switching clocks twice a year.
        *   **Sleep Deprivation:** Measurably impacts productivity and is linked to spikes in health issues (heart attacks, suicides), particularly on the Monday after the spring switch.
        *   **Scheduling Meetings:** Extremely difficult across time zones, especially internationally, because different regions/countries switch on different dates (and sometimes in different directions, e.g., Southern Hemisphere).
        *   *Example:* Trying to coordinate a meeting between New York, London, and Sydney during the spring switch period shows offsets changing multiple times over a few weeks.
        *   **Inconsistency within Countries:** Many countries have regions that opt out of DST (e.g., parts of Brazil, Canada - Saskatchewan, Australia, US states like Arizona and Hawaii). The Arizona/Navajo Nation/Hopi Reservation example shows extreme local complexity.
    *   Conclusion: DST adds significant complexity for a debatable benefit today.

*   **Universal Time Standards: The Need for a Reference**
    *   To define time zones, a universal reference point is needed.
    *   **GMT (Greenwich Mean Time):** Historically the widely recognized standard. Based at the Royal Observatory in **Greenwich, London**, which also defined the **Prime Meridian (0 degrees longitude)**. The observatory was established for navigation and timekeeping.
    *   GMT was based on astronomical observations.
    *   **UTC (Coordinated Universal Time):** The modern standard, largely replacing GMT for technical purposes.
    *   *Naming:* The acronym (UTC) is a compromise between English (CUT) and French (TUC) names.
    *   UTC is essentially the "ship's time of starship Earth," maintained by international standards bodies using highly precise **atomic clocks**.
    *   **Atomic Clocks:** Extremely accurate (inaccuracy measured in seconds over tens of millions of years).
    *   **UTC as the Reference:** All time zones are defined as an offset from UTC (e.g., EST is UTC-5, EDT is UTC-4).
    *   **Practical Advice:** **Always use UTC** for internal time representation in software, especially in distributed systems or when dealing with multiple time zones (e.g., cloud servers typically run on UTC). Convert to local time *only* for display to the user.
    *   GMT is still sometimes used interchangeably with UTC, though there are technical differences.

*   **Leap Seconds: When Atomic Time Meets Astronomical Time**
    *   Problem: The Earth's rotation is not perfectly stable or exactly 24 hours. It varies slightly and unpredictably.
    *   The **atomic clock** defines the precise length of a **second**.
    *   The Earth's rotation (defining the "day") is *not* an exact integer multiple of these atomic seconds.
    *   This leads to a growing discrepancy between the precise atomic clock (UTC) and astronomical time (based on Earth's rotation).
    *   To keep UTC aligned with astronomical time (within 1 second), **leap seconds** are occasionally added.
    *   A leap second is added at the end of a day, typically June 30 or December 31. The sequence becomes 23:59:58, 23:59:59, **23:59:60**, 00:00:00.
    *   The decision to add a leap second is made by a standards body based on monitoring the discrepancy. There's no fixed rule like for leap years because Earth's rotation is unpredictable.
    *   So far, only positive leap seconds have been added (27 total, last in 2014). Negative leap seconds (skipping a second) are theoretically possible if Earth sped up significantly, but haven't happened.
    *   **Software Relevance:** Leap seconds are a rare but real source of bugs.
    *   *Real-world Bug Example:* A stock exchange system filtering "late" messages had custom time conversion logic that didn't account for a leap second. When one was introduced, messages were delayed by >1 second according to its faulty logic and incorrectly filtered. This highlights the danger of writing your own time/date logic for sensitive applications.

*   **Practical Time Formats and Tools**
    *   **ISO 8601 Format:** The recommended standard for writing dates and times in software.
        *   Structure: **YYYY-MM-DD HH:MM:SS** (can include milliseconds).
        *   Order: Largest unit (Year) to smallest (Second/millisecond).
        *   Separator: Often a space or the letter 'T' between date and time (e.g., `2024-11-26T10:00:00`).
        *   UTC indicator: Often ends with 'Z' (e.g., `2024-11-26T15:00:00Z`), indicating UTC time (also called "Zulu time").
        *   Advantage: Alphabetical sorting matches chronological sorting if zero-padded (e.g., `2024-06-01` vs `2024-11-26`). SQLite often stores dates as strings in this format and sorts them alphabetically.
    *   **Unix Time (Epoch Time):** A simple, widely used representation.
        *   Definition: The number of **seconds** that have elapsed since **January 1, 1970, 00:00:00 UTC**.
        *   *Example in SQLite:* `SELECT unixepoch();` returns the current unix timestamp.
        *   Very useful for measuring **durations**. To find how long something took, record the unix time before and after, and subtract the two numbers.
        *   May not be ideal for long-term storage or representing specific dates for users (UTC string is often better).
    *   **Time Zone Database (IZana database):** The de facto standard database used by operating systems, libraries, and browsers.
        *   Structure: Defines time zones by **Continent/City** (e.g., `America/Toronto`, `Europe/Paris`). Using continent avoids political issues with country names changing.
        *   Contains rules for offsets from UTC and DST rules for different historical periods for each location.
        *   Updated regularly as countries change their time laws.
    *   **Converting Times:** The general rule is to convert the source time (with its time zone) to **UTC**, and then convert from **UTC** to the target time zone. Avoid direct conversion between arbitrary time zones.
    *   **Recurring Events:** Converting times for recurring events (like a weekly lecture) is particularly tricky because DST rules cause the offset to change during the year. A stable time in one time zone will *not* be a stable time in another time zone if DST is involved.
    *   **Tools:** Leverage built-in system tools, libraries, and online resources (`timeanddate.com` is highly recommended) for time zone conversions. **Avoid writing your own time logic** for anything beyond simple current time display or basic duration calculation.

*   **Recap Key Takeaways**
    *   Time naming and rules are human-made and changeable. Agreement is key.
    *   Use UTC when in doubt.
    *   Use ISO format for writing dates/times.
    *   Use Unix time for internal duration calculations.
    *   Avoid writing your own complex time/date logic; use existing robust tools and libraries. Timekeeping is a complex domain with historical and political quirks (leap seconds, DST changes, calendar changes).

*   **Further Points / Anecdotes**
    *   *Cargo Ship Time:* Captains often switch time every few days at sea to keep clocks reasonably aligned with local daylight, prioritizing sleep.
    *   *Unix Time in Sci-Fi:* Mention the idea of using kiloseconds/gigaseconds as primary time units (arbitrary zero point less intuitive for daily life with sunrises/sunsets). This was used in several books by Vernor Vinge.
    *   *Video Recommendations:* Point to the linked videos for more depth on DST, time zones, and the history of time measurement.
