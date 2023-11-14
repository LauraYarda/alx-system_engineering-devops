0x19-postmortem

Links, Code, and Transcript

    Google API infrastructure outage incident report

In this episode, I wanted to look at how to write an Incident Report, also referred to as a Postmortem. Rather than give you something of my own creation, lets look at a Google Incident Report from early 2013, which I think serves as a great example.

Before we dive in, I should mention that I am not affiliated with Google in any way, I just liked how they handled this Incident, and I think their write up should be set forth as an example for others to follow. You can find a link to the Incident Report in the episode notes below.

Working in IT, we all know that from time to time, things go off the rails, despite our planning and best intentions. When things go really wrong, you might be asked to write an Incident Report that can be shared with senior executives, fellow staff, or even customers. I recommend you go through this process whether anyone will read these or not, since it can serve as a guide, and you will be analyzing your environment when things go wrong, and building ways to prevent the same types of failures moving forward.

When I read Google’s Incident report about a their API service outage, it struck a cord with me, because it seemed to answer all of my questions, and helped give the impression they know what they were doing. We are not going to read the entire report, but lets look at the reports structure, and several things mentioned in it.

The structure is actually surprisingly simple and yet powerful. The report is made up of five parts, an issue summary, a timeline, root cause analysis, resolution and recovery, and lastly, corrective and preventative measures. Lets review each of these parts in detail.

Issue Summary

    short summary (5 sentences)
    list the duration along with start and end times (include timezone)
    state the impact (most user requests resulted in 500 errors, at peak 100%)
    close with root cause

Timeline

    list the timezone
    covers the outage duration
    when outage began
    when staff was notified
    actions, events, …
    when service was restored

Root Cause

    give a detailed explanation of event
    do not sugarcoat

Resolution and recovery

    give detailed explanation of actions taken (includes times)

Corrective and Preventative Measures

    itemized list of ways to prevent it from happening again
    what can we do better next time?

This Incident Report also points to the fact that Google has lots of internal systems and procedural machinery happening behind the scenes. I think of these as best practices for any company. For example, they have automated service monitoring and alerting capabilities, we know this because they listed when the outage began, and when the team was alerted via pager. They also have change management, in that they were able to see who did what when, and ultimately try and roll back the changes. In my mind this is key, if you do not have this visibility into changes, then it will take time to figure out what triggered the issue in the first place, never mind trying to roll it back. They also did not sugarcoat the fact that the configuration push was not the safest and skipped testing.

So, if you ever find yourself in a situation where you have to write an Incident Report, I highly suggest checking out Google’s Incident Report listed in the episode notes below. I would also recommend thinking about how their internal systems and procedural machinery can be replicated in your environment.

