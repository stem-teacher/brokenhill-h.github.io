#!/bin/bash

# Define an array with the title and content for each slide
slides=(
    "Introduction to Software Requirements Specification (SRS)::Programming Fundamentals – Year 11\n\nLearning Objectives:\n- Define what an SRS is and explain its importance.\n- Understand different types of software requirements.\n- Learn about the characteristics of a good SRS.\n- Discuss the role of SRS in the software engineering lifecycle.\n- Hands-on activity: Create basic requirements using GitHub and the Hugo website generator."
    
    "What is a System Requirements Specification (SRS)::A formal document detailing what a software system must do.\nForms a contract between the customer and the software team."
    
    "SRS in Context::Used by software engineering teams to define project boundaries.\nEnsures developers build what the customer expects."

    "Scenario: Building Software for a School::Example: Creating a School Event Management System.\nWhat features would be required?"

    "Understanding Software Requirements::Requirements describe what the software shall do and how it must perform.\n\nFunctional Requirement Example:\n- The system shall allow students to register for events.\n\nNon-Functional Requirement Example:\n- The system shall handle at least 500 users simultaneously."
    
    "Types of Requirements::- Functional: Specific functions the system must perform.\n- Non-Functional: Performance, usability, and security aspects.\n- Security: Measures to protect data and user privacy.\n- System: Hardware, software, network infrastructure, and other environmental requirements necessary for the software's operation."

    "Where Do Requirements Come From?::Stakeholders, business needs, regulations, and standards.\nExample: Australian Cyber Security Centre (ACSC) Information Security Manual (ISM)\n(https://www.cyber.gov.au/resources-business-and-government/essential-cyber-security/ism)"

    "Workbooks: Documenting Requirements::Tools like GitHub to keep a version-controlled record of requirements.\nMarkdown makes it easy to collaborate and track changes.\nWeb frameworks like Hugo simplify the display of requirements across teams.\nUse tools such as Pandoc to convert text and web material into formal Word and PDF documents."

    "Characteristics of a Good SRS::- Correct\n- Unambiguous\n- Complete\n- Consistent\n- Ranked\n- Verifiable\n- Traceable"

    "Example Requirement Statement::ID: REQ-001\nTitle: User Authentication\nDescription: The system must allow users to log in using a username and password.\nAcceptance Criteria: Users can log in with valid credentials.\nTraceable: REST Web systems simplify this."

    "What is Traceability?::The ability to track each requirement throughout its lifecycle.\nEssential for ensuring all requirements are implemented and tested.\n\nThis includes:\n- Why the requirement\n- Planning to implement the requirement\n- Where the requirement is met\n- How the requirement is tested"

    "Common Mistakes to Avoid::- Designs in specification\n- Vague statements\n- Keep project management constraints separate\n- Desirements – Unrealistic or unnecessary personal requirements (e.g., I desire a Ferrari as my first car)"

    "Where Does SRS Fit in SDLC::- Planning: Defines scope and requirements.\n- Estimation, Costing & Negotiation: Defines scope and requirements.\n- Construction: Guides the development process.\n- Testing: Ensures the final product meets requirements.\n- Acceptance: SRS is a key item in getting paid to complete a project."

    "Hands-On Activity: Write Your Own Requirement::Create a functional, non-functional, and security requirement for a simple system.\nUse the SRS template in the Hugo site."

    "Summary & Next Steps::Today we covered what an SRS is, its types, characteristics, and how to document requirements.\nHomework: Refine your requirements and check in to GitHub."
)

# Loop over the slides array and create a markdown file for each slide
counter=1
for slide in "${slides[@]}"; do
    # Split the slide content into title and content
    title=$(echo "$slide" | cut -d "::" -f 1)
    content=$(echo "$slide" | cut -d "::" -f 2)

    # Create a new markdown file for each slide
    filename=$(printf "slide-%02d.md" "$counter")
    echo "Creating $filename..."

    # Write front matter and content to the markdown file
    cat <<EOL > "$filename"
---
title: "$title"
date: $(date +"%Y-%m-%d")
draft: false
---

<section>
## $title

$content
</section>
EOL

    # Increment the slide counter
    ((counter++))
done

echo "Slides generated successfully."

