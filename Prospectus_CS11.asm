.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\masm32.lib

.data
    
    tab         equ 9       
    newline     equ 13, 10  
    
    ; First Year First Semester
    sem11 db "First Year First Semester", newline, 0
    tableHeader11 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataA1   db "GE 2", tab, "Purposive Communication w/ Interactive Learning", tab, "6", tab, "None", newline, 0
    rowDataA2   db "GE 1", tab, "Understanding the Self", tab, "3", tab, "None", newline, 0
    rowDataA3   db "GE 4", tab, "Mathematics in the Modern World", tab, "3", tab, "None", newline, 0
    rowDataA4   db "BA 100", tab, "Essentials to Business Principles and Practices", tab, "6", tab, "None", newline, 0
    rowDataA5   db "BAHR 211", tab, "Human Resource Management", tab, "3", tab, "None", newline, 0
    rowDataA6   db "ACCBP 100", tab, "Accounting plus", tab, "3", tab, "None", newline, 0
    rowDataA7   db "PAHF 1", tab, "Movement Competency Training", tab, "3", tab, "None", newline, 0
    rowDataA8   db "Total Units", tab, "23", newline, 0



    ; First Year Second Semester
    sem12 db "First Year Second Semester", newline, 0
    tableHeader12 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataB1   db "BAHR 213", tab, "Good Governance & Social Responsibility", tab, "3", tab, "None", newline, 0
    rowDataB2   db "GE 15", tab, "Environmental Science", tab, "3", tab, "None", newline, 0
    rowDataB3   db "BE 121", tab, "Basic Microeconomics", tab, "3", tab, "BA 100", newline, 0
    rowDataB4   db "MM 212", tab, "Consumer Behaviour", tab, "3", tab, "BA 100", newline, 0
    rowDataB5   db "UGE 1", tab, "Reading Comprehension", tab, "6", tab, "GE 2", newline, 0
    rowDataB6   db "GE 3", tab, "The Contemporary World", tab, "3", tab, "None", newline, 0
    rowDataB7   db "PAHF 2", tab, "Exercise-based Fitness Activities", tab, "2", tab, "PAHF 1", newline, 0
    rowDataB8   db "Total Units", tab, "23", newline, 0
    


    ; Second Year First Semester
    sem21 db "Second Year First Semester", newline, 0
    tableHeader21 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataC1   db "UGE 2", tab, "Technical Writing in the Discipline", tab, "3", tab, "UGE 1", newline, 0
    rowDataC2   db "CBM 112", tab, "Operations Management and TQM", tab, "3", tab, "BAHR 211", newline, 0
    rowDataC3   db "ACC 216", tab, "Law on Obligations and Contracts", tab, "3", tab, "UGE 1", newline, 0
    rowDataC4   db "GE 6", tab, "Rizal's Life and Works", tab, "3", tab, "None", newline, 0
    rowDataC5   db "MM 216", tab, "Integrated Marketing Communications", tab, "3", tab, "MM 212", newline, 0
    rowDataC6   db "MM 212", tab, "Professional Salesmanship", tab, "3", tab, "MM 212", newline, 0
    rowDataC7   db "MM 311", tab, "Product Management", tab, "3", tab, "None", newline, 0
    rowDataC8   db "PAHF 3", tab, "Dance and Sports 1", tab, "2", tab, "PAHF 2", newline, 0
    rowDataC9   db "Total Units", tab, "26", newline, 0



    ; Second Year Second Semester
    sem22 db "Second Year Second Semester", newline, 0
    tableHeader22 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataD1   db "GE 20", tab, "Reading Visual Arts", tab, "3", tab, "None", newline, 0
    rowDataD2   db "GE 11", tab, "The Entrepreneurial Mind", tab, "3", tab, "None", newline, 0
    rowDataD3   db "GE 7", tab, "Art Appreciation", tab, "3", tab, "None", newline, 0
    rowDataD4   db "CBM 121", tab, "Strategic Management", tab, "3", tab, "BAHR 211", newline, 0
    rowDataD5   db "ACC 311", tab, "Income Taxation", tab, "3", tab, "GE 4", newline, 0
    rowDataD6   db "MM 321", tab, "Pricing Strategy", tab, "3", tab, "MM 212", newline, 0
    rowDataD7   db "MM 312", tab, "Retail Management", tab, "3", tab, "MM 311", newline, 0
    rowDataD8   db "MM 221", tab, "Distribution Management", tab, "3", tab, "MM 311", newline, 0
    rowDataD9   db "PAHF 4", tab, "Dance and Sports 2", tab, "2", tab, "PAHF 3", newline, 0
    rowDataD10  db "Total Units", tab, "26", newline, 0



    ; Third Year First Semester
    sem31 db "Third Year First Semester", newline, 0
    tableHeader31 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataE1   db "MME 321", tab, "Services Marketing", tab, "3", tab, "MM 212", newline, 0
    rowDataE2   db "MME 322", tab, "Industrial/Agricultural Marketing", tab, "3", tab, "MM 311", newline, 0
    rowDataE3   db "ACC 321", tab, "Business Taxation", tab, "3", tab, "ACC 311", newline, 0
    rowDataE4   db "MM 224", tab, "E-commerce and Internet Marketing", tab, "3", tab, "MM 212", newline, 0
    rowDataE5   db "CBM 321", tab, "International Business and Trade", tab, "3", tab, "ACC 216", newline, 0
    rowDataE6   db "CBM 300", tab, "Methods and Research", tab, "3", tab, "UGE 2", newline, 0
    rowDataE7   db "NSTP 1", tab, "National Service Training Program 1", tab, "3", tab, "None", newline, 0
    rowDataE8   db "Total Units", tab, "21", newline, 0



    ; Third Year Second Semester
    sem32 db "Third Year Second Semester", newline, 0
    tableHeader32 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataF1   db "MM 301", tab, "Business Research", tab, "3", tab, "CBM 300", newline, 0
    rowDataF2   db "GE 9", tab, "Ethics (Disciplinal)", tab, "3", tab, "None", newline, 0
    rowDataF3   db "MME 324", tab, "International Marketing", tab, "3", tab, "CBM 321", newline, 0
    rowDataF4   db "MM 217", tab, "Public Relations", tab, "3", tab, "MM 216", newline, 0
    rowDataF5   db "MM 213", tab, "Marketing Analytics", tab, "3", tab, "GE 4, MM 224", newline, 0
    rowDataF6   db "MME 312", tab, "Sales Management", tab, "3", tab, "MM 211", newline, 0
    rowDataF7   db "NSTP 2", tab, "National Service Training Program 2", tab, "3", tab, "NSTP 1", newline, 0
    rowDataF8   db "Total Units", tab, "21", newline, 0



    ; Fourth Year First Semester
    sem41 db "Fourth Year First Semester", newline, 0
    tableHeader41 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataG1   db "ACC 214/L", tab, "IT Application Tools in Business", tab, "2", tab, "GE 4", newline, 0
    rowDataG2   db "GE 8", tab, "Readings in Philippine History", tab, "3", tab, "None", newline, 0
    rowDataG3   db "MME 323", tab, "Special Topics in Marketing Management", tab, "3", tab, "4th yr standing", newline, 0
    rowDataG4   db "CAED 500c", tab, "Carrer and Personality Development", tab, "3", tab, "4th yr standing", newline, 0
    rowDataG5   db "MM 223", tab, "Marketing Management", tab, "3", tab, "4th yr standing", newline, 0
    rowDataG6   db "Total Units", tab, "14", newline, 0



    ; Fourth Year Second Semester
    sem42 db "Fourth Year Second Semester", newline, 0
    tableHeader42 db "Code", tab, "Title", tab, "Description", tab, "Units", tab, "Prerequisites", newline, 0

    rowDataH1   db "ACC 214/L", tab, "MM 411", tab, "6", tab, "MM 301", newline, 0
    rowDataH2   db "Total Units", tab, "6", newline, 0



    heading1 db 10, "University of Mindanao", 0
    heading2 db 10, "Bachelor of Science in Business Administration", 0
    heading3 db 10, "Marketing Management", 0
    heading4 db 10, "College of Business Administration Education", 0



    space db " ", newline, 0
    sem db "Viewing All Semesters", newline, 0
    sem1 db "First Semester", newline, 0
    sem2 db "Second Semester", newline, 0


    yearchoice db 10, "Enter Year [1 - 4]: ", 0
    semesterchoice db 10, "Which Semester do you want to view? [ 1 (First Term), 2 (Second Term), 3 (View Both), 4 (Return): ", 0
    return db 10, "Do you want to return? [Y/N]: ", 0



.data?

    yearchosen db 10 dup (?)
    
    semesterchosen db 10 dup (?)
    semesterchosen2 db 10 dup (?)
    semesterchosen3 db 10 dup (?)
    semesterchosen4 db 10 dup (?)
    
    returnchosen db 10 dup (?)

.code

start:
    invoke ClearScreen

    ; Start Menu

    invoke StdOut, addr yearchoice
    invoke StdIn, addr yearchosen, 10


        ; First Year Selection Menu
    
        .if yearchosen == '1'

        invoke StdOut, addr semesterchoice
        invoke StdIn, addr semesterchosen, 10

            .if semesterchosen == '1'
                
            ; Display table 1st Year 1st Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem11
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader11

            invoke StdOut, addr rowDataA1
            invoke StdOut, addr rowDataA2
            invoke StdOut, addr rowDataA3
            invoke StdOut, addr rowDataA4
            invoke StdOut, addr rowDataA5
            invoke StdOut, addr rowDataA6
            invoke StdOut, addr rowDataA7
            invoke StdOut, addr rowDataA8

            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                
            .endif

            .if semesterchosen == '2'

            ; Display table 1st Year 2nd Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem12
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader12

            invoke StdOut, addr rowDataB1
            invoke StdOut, addr rowDataB2
            invoke StdOut, addr rowDataB3
            invoke StdOut, addr rowDataB4
            invoke StdOut, addr rowDataB5
            invoke StdOut, addr rowDataB6
            invoke StdOut, addr rowDataB7
            invoke StdOut, addr rowDataB8
            
            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen == '3'

            ; Display both Sem for 1st Year
            invoke StdOut, addr space
            invoke StdOut, addr sem
            invoke StdOut, addr space
            invoke StdOut, addr sem1
            invoke StdOut, addr tableHeader11

            invoke StdOut, addr rowDataA1
            invoke StdOut, addr rowDataA2
            invoke StdOut, addr rowDataA3
            invoke StdOut, addr rowDataA4
            invoke StdOut, addr rowDataA5
            invoke StdOut, addr rowDataA6
            invoke StdOut, addr rowDataA7
            invoke StdOut, addr rowDataA8

            invoke StdOut, addr space


            invoke StdOut, addr sem2
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader12

            invoke StdOut, addr rowDataB1
            invoke StdOut, addr rowDataB2
            invoke StdOut, addr rowDataB3
            invoke StdOut, addr rowDataB4
            invoke StdOut, addr rowDataB5
            invoke StdOut, addr rowDataB6
            invoke StdOut, addr rowDataB7
            invoke StdOut, addr rowDataB8
            
            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen =='4'
            je start

            .endif

    .endif

        ; Second Year Selection Menu
    
        .if yearchosen == '2'

        invoke StdOut, addr semesterchoice
        invoke StdIn, addr semesterchosen, 10

            .if semesterchosen == '1'
                
            ; Display table 2nd Year 1st Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem21
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader21

            invoke StdOut, addr rowDataC1
            invoke StdOut, addr rowDataC2
            invoke StdOut, addr rowDataC3
            invoke StdOut, addr rowDataC4
            invoke StdOut, addr rowDataC5
            invoke StdOut, addr rowDataC6
            invoke StdOut, addr rowDataC7
            invoke StdOut, addr rowDataC8
            invoke StdOut, addr rowDataC9

            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                
            .endif

            .if semesterchosen == '2'

            ; Display table 2nd Year 2nd Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem12
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader12

            invoke StdOut, addr rowDataD1
            invoke StdOut, addr rowDataD2
            invoke StdOut, addr rowDataD3
            invoke StdOut, addr rowDataD4
            invoke StdOut, addr rowDataD5
            invoke StdOut, addr rowDataD6
            invoke StdOut, addr rowDataD7
            invoke StdOut, addr rowDataD8
            invoke StdOut, addr rowDataD9
            invoke StdOut, addr rowDataD10
            
            invoke StdOut, addr space         
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen == '3'

            ; Display both Sem for 2nd Year
            invoke StdOut, addr space
            invoke StdOut, addr sem
            invoke StdOut, addr space
            invoke StdOut, addr sem1
            invoke StdOut, addr tableHeader21

            invoke StdOut, addr rowDataC1
            invoke StdOut, addr rowDataC2
            invoke StdOut, addr rowDataC3
            invoke StdOut, addr rowDataC4
            invoke StdOut, addr rowDataC5
            invoke StdOut, addr rowDataC6
            invoke StdOut, addr rowDataC7
            invoke StdOut, addr rowDataC8
            invoke StdOut, addr rowDataC9


            invoke StdOut, addr space


            invoke StdOut, addr sem2
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader22

            invoke StdOut, addr rowDataD1
            invoke StdOut, addr rowDataD2
            invoke StdOut, addr rowDataD3
            invoke StdOut, addr rowDataD4
            invoke StdOut, addr rowDataD5
            invoke StdOut, addr rowDataD6
            invoke StdOut, addr rowDataD7
            invoke StdOut, addr rowDataD8
            invoke StdOut, addr rowDataD9
            invoke StdOut, addr rowDataD10

            
            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen =='4'
            je start

            .endif

    .endif


        ; Third Year Selection Menu
    
        .if yearchosen == '3'

        invoke StdOut, addr semesterchoice
        invoke StdIn, addr semesterchosen, 10

            .if semesterchosen == '1'
                
            ; Display table 3rd Year 1st Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem31
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader31

            invoke StdOut, addr rowDataE1
            invoke StdOut, addr rowDataE2
            invoke StdOut, addr rowDataE3
            invoke StdOut, addr rowDataE4
            invoke StdOut, addr rowDataE5
            invoke StdOut, addr rowDataE6
            invoke StdOut, addr rowDataE7
            invoke StdOut, addr rowDataE8

            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                
            .endif

            .if semesterchosen == '2'

            ; Display table 3rd Year 2nd Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem32
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader32

            invoke StdOut, addr rowDataF1
            invoke StdOut, addr rowDataF2
            invoke StdOut, addr rowDataF3
            invoke StdOut, addr rowDataF4
            invoke StdOut, addr rowDataF5
            invoke StdOut, addr rowDataF6
            invoke StdOut, addr rowDataF7
            invoke StdOut, addr rowDataF8
            
            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen == '3'

            ; Display both Sem for 3rd Year
            invoke StdOut, addr space
            invoke StdOut, addr sem
            invoke StdOut, addr space
            invoke StdOut, addr sem1
            invoke StdOut, addr tableHeader31

            invoke StdOut, addr rowDataE1
            invoke StdOut, addr rowDataE2
            invoke StdOut, addr rowDataE3
            invoke StdOut, addr rowDataE4
            invoke StdOut, addr rowDataE5
            invoke StdOut, addr rowDataE6
            invoke StdOut, addr rowDataE7
            invoke StdOut, addr rowDataE8

            invoke StdOut, addr space


            invoke StdOut, addr sem2
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader32

            invoke StdOut, addr rowDataE1
            invoke StdOut, addr rowDataE2
            invoke StdOut, addr rowDataE3
            invoke StdOut, addr rowDataE4
            invoke StdOut, addr rowDataE5
            invoke StdOut, addr rowDataE6
            invoke StdOut, addr rowDataE7
            invoke StdOut, addr rowDataE8
            
            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen =='4'
            je start

            .endif

    .endif


        ; 4th Year Selection Menu
    
        .if yearchosen == '4'

        invoke StdOut, addr semesterchoice
        invoke StdIn, addr semesterchosen, 10

            .if semesterchosen == '1'
                
            ; Display table 4th Year 1st Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem41
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader41

            invoke StdOut, addr rowDataG1
            invoke StdOut, addr rowDataG2
            invoke StdOut, addr rowDataG3
            invoke StdOut, addr rowDataG4
            invoke StdOut, addr rowDataG5
            invoke StdOut, addr rowDataG6

            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                
            .endif

            .if semesterchosen == '2'

            ; Display table 4th Year 2nd Sem Table
            invoke StdOut, addr space
            invoke StdOut, addr sem42
            invoke StdOut, addr space
            invoke StdOut, addr tableHeader42

            invoke StdOut, addr rowDataH1
            invoke StdOut, addr rowDataH2
            
            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen == '3'

            ; Display both Sem for 4th Year
            invoke StdOut, addr space
            invoke StdOut, addr sem
            invoke StdOut, addr space
            invoke StdOut, addr sem1
            invoke StdOut, addr tableHeader41

            invoke StdOut, addr rowDataG1
            invoke StdOut, addr rowDataG2
            invoke StdOut, addr rowDataG3
            invoke StdOut, addr rowDataG4
            invoke StdOut, addr rowDataG5
            invoke StdOut, addr rowDataG6

            invoke StdOut, addr space


            invoke StdOut, addr sem2
            invoke StdOut, addr tableHeader42

            invoke StdOut, addr rowDataH1
            invoke StdOut, addr rowDataH2
            
            invoke StdOut, addr space
            invoke StdOut, addr return
            invoke StdIn, addr returnchosen, 10

                .if returnchosen =='Y'
                je start
                .elseif returnchosen == 'y'
                je start
                .if returnchosen == 'N'
                jmp exit
                .elseif returnchosen == 'n'
                jmp exit
                .endif
                .endif
                

            .endif
            
            .if semesterchosen =='4'
            je start

            .endif

    .endif






exit:

    invoke ExitProcess, 0

end start