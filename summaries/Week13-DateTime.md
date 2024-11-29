# Lecture 13: Date and Time
- Summary generated from Zoom audio transcript by ChatGPT
- [Slides](https://docs.google.com/presentation/d/11oi21v0B8cuGToPE8ZFpm6z_2LxdttQKTWOWoiPXVAE)

## Key Points
- **Human Convention**: Naming of time periods (days, hours) is arbitrary and subject to human conventions.
- **UTC Usage**: Use UTC (Coordinated Universal Time) whenever in doubt about time zones.
- **ISO Format**: Prefer the ISO format for dates: `YYYY-MM-DD HH:MM:SS`.
- **Full ISO Format**: Example `2024-11-29T06:19:56.963Z`
  - `T` separates between date and time and has no special meaning.
  - The last 3 digits after the dot are milliseconds.
  - `Z` stands for 'Zulu time' which means it's UTC time.

## Historical Context
- **Sundials**: Early timekeeping devices, e.g., from ancient Egypt and Korea.
- **Mechanical Clocks**: Accurate clocks were crucial for navigation.
- **Julian vs. Gregorian Calendar**:
  - Julian Calendar: Introduced by Julius Caesar, had leap years every 4 years.
  - Gregorian Calendar: Introduced by Pope Gregory XIII to correct the Julian Calendar's drift (leap year rules adjusted).
  - Leap Year Rule: A year is a leap year if divisible by 4, but not by 100, unless also divisible by 400.
  - Gregorian Calendar adoption took over 300 years for full adoption across Europe and beyond.


## Time Zones and Daylight Saving Time
- **Time Zones**: Based on 15-degree longitudinal segments; political decisions affect boundaries.
- **Daylight Saving Time (DST)**: Introduced to save energy; varies by country and region.
- **DST Complications**: Causes scheduling issues across different regions due to non-uniform start and end dates.

## Universal Time Standards
- **GMT vs. UTC**: GMT was the original standard; UTC is now widely used, based on atomic clocks.
- **Atomic Clocks**: Extremely precise.

## Leap Seconds
- **Leap Second**: Occasionally added to synchronize atomic time with astronomical time due to Earth's variable rotation.
- **Practical Implications**: Can cause issues in software systems not accounting for them.

## Time Zone Database
- **IANA Time Zone Database**: aka [TZ Database](https://en.wikipedia.org/wiki/Tz_database)
Provides a comprehensive list of time zones and rules, used globally in software systems.

## Unix Time
- **Definition**: Number of seconds since January 1, 1970 (UTC).
- **Usage**: Useful for computing time intervals; common in programming.

## Practical Tips
- **Avoid Custom Logic**: Use existing libraries for time calculations to avoid errors.
- **Recurring Events**: Be cautious with time zone conversions for recurring events, especially with DST changes.

## Example Commands
- **SQLite Unix Time**:
  ```sql
  -- Two ways to get current Unix time in SQLIte
  SELECT unixepoch();
  SELECT strftime('%s', 'now'); 

  -- Current date & time as "2024-11-29 06:17:58"
  SELECT datetime()
  ```
- **JavaScript Date**:
  ```javascript
  d = new Date()
  d.toISOString(); 
  // prints '2024-11-29T06:19:56.963Z'
  ```

## Additional Resources
- **Videos**: Recommended documentaries and videos on timekeeping and time zones for further understanding.