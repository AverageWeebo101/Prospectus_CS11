.386
.model flat, stdcall
option casemap :none
include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
 
;name and idnumber

    namelabel db 10,9,9,"Enter your name: ",0
    namefinal db 10, 9, "Name: ",0
    idlabel db 10, 9,9,"Enter your ID number: ",0
    idnumber db 10,9,"Student ID number: ",0
    
;top part
        hello db 10,9,9, "Hello GA!",0
        UM db 10, 9,9,9,9,9, "University of Mindanao", 10, 0
        Dep db 9,9,9, "College of Business Administration Education", 10, 0
        prog db 9,9, "Bachelor of Science in Administration Major in Marketing Management", 10, 0
        breakline db 9, "------------------------------------------------------------------------------------------",10, 0


;set up para sa semesters

;first year first sem 
    sem11 db "First Year First Semester", 10, 0
    tableHeader11 db "Code",  9,9,9, "Title", 9, 9,9,9,9,9,9, "Units", 9, "Prerequisites", 10, 0

    ge2   db "[A] GE 2",9,9, "Purposive Communication with Interactive Learning", 9, "6", 9, "None", 10, 0
    ge1   db "[B] GE 1", 9,9, "Understanding the Self", 9,9,9,9,9, "3", 9, "None", 10, 0
    ge4   db "[C] GE 4", 9,9, "Mathematics in the Modern World", 9,9,9,9, "3", 9, "None", 10, 0
    ba100   db "[D] BA 100", 9,9, "Essentials to Business Principles and Practices", 9,9, "3", 9, "None", 10, 0
    bahr211   db "[E] BAHR 211", 9,9, "Human Resource Management", 9,9,9,9, "3", 9, "None", 10, 0
    accbp100   db "[F] ACCBP 100",9, 9,"Accounting Plus", 9,9,9,9,9, 9,"3", 9, "None", 10, 0
    pahf1   db "[G] PAHF 1", 9,9, "Movement Competency Training", 9,9,9,9, "3", 9, "None", 10, 0
    rowDataline db 9, "-------------------------------------------------------------------------------------------------------------", 10,0
    rowDataA8   db 10,"Total Units", 9,9,9,9,9,9,9,9,9, "23", 10, 0

; First Year Second Semester
    sem12 db 10,"First Year Second Semester", 10, 0
    tableHeader12 db "Code",9,9, 9, "Title", 9,9,9,9, 9,9,9, "Units", 9, "Prerequisites", 10, 0

    bahr213   db "[H] BAHR 213", 9,9, "Governance & Social Responsibility", 9,9,9, "3", 9, "None", 10, 0
    ge15   db "[I] GE 15",9,9, "Environmental Science", 9,9,9,9,9, "3", 9, "None", 10, 0
    be121   db "[J] BE 121",9,9, "Microeconomics", 9,9,9,9,9,9, "3", 9, "BA 100", 10, 0
    mm212   db "[K] MM 212",9,9, "Consumer Behaviour", 9,9,9,9,9, "3", 9, "BA 100", 10, 0
    uge1   db "[L] UGE 1", 9,9, "Reading Comprehension", 9,9,9,9,9, "6", 9, "GE 2", 10, 0
    ge3   db "[M] GE 3", 9,9, "The Contemporary World", 9,9,9,9,9, "3", 9, "None", 10, 0
    pahf2   db "[N] PAHF 2", 9,9, "Exercise-based Fitness Activities",9, 9,9, "2", 9,"PAHF 1", 10, 0
  
    totalunits12   db "Total Units",9,9,9,9,9,9, 9,9,9, "23", 10, 0
    


    ; Second Year First Semester
    sem21 db 10,"Second Year First Semester", 10, 0
    tableHeader21 db "Code", 9,9,9, "Title", 9,9,9,9,9,9,9, "Units", 9, "Prerequisites", 10, 0

    uge2   db "[A] UGE 2", 9, 9,"Technical Writing in the Discipline", 9,9,9, "3", 9, "UGE 1", 10, 0
    cbm112   db "[B] CBM 112", 9,9, "Operations Management and TQM", 9,9,9,9, "3", 9, "BAHR 211", 10, 0
    acc216   db "[C] ACC 216",9,9, "Law on Obligations and Contracts", 9,9,9, "3", 9, "UGE 1", 10, 0
    ge6   db "[D] GE 6", 9,9, "Rizal's Life and Works", 9,9,9,9, 9,"3", 9, "None", 10, 0
    mm216   db "[E] MM 216", 9,9, "Integrated Marketing Communications", 9,9,9, "3", 9, "MM 212", 10, 0
    mm211   db "[F] MM 212", 9,9, "Professional Salesmanship", 9,9,9,9, "3", 9, "MM 212", 10, 0
    mm311   db "[G] MM 311", 9,9, "Product Management", 9,9,9,9,9, "3", 9, "None", 10, 0
    ge5   db "[H] GE 5", 9,9, "Science, Technology, and Society", 9,9,9, "3", 9, "None", 10, 0
    pahf3   db "[I] PAHF 3", 9,9, "Dance and Sports 1", 9,9,9,9,9, "2", 9, "PAHF 2", 10, 0
    
    totalunits21   db "Total Units", 9,9,9,9,9,9,9,9,9, "26", 10, 0



    ; Second Year Second Semester
    sem22 db 10, "Second Year Second Semester", 10, 0
    tableHeader22 db "Code", 9,9,9, "Title", 9,9,9,9,9,9,9, "Units", 9, "Prerequisites", 10, 0


    ge20   db "[J] GE 20", 9,9, "Reading Visual Arts", 9,9,9,9,9, "3", 9, "None", 10, 0
    ge11   db "[K] GE 11", 9,9, "The Entrepreneurial Mind", 9,9,9,9, "3", 9, "None", 10, 0
    ge7   db "[L] GE 7", 9,9, "Art Appreciation", 9, 9,9,9,9,"3",9, "None", 10, 0
    cbm121   db "[M] CBM 121",9,9, "Strategic Management",9,9, 9,9,9, "3", 9, "BAHR 211", 10, 0
    acc311   db "[N] ACC 311",9,9, "Income Taxation", 9,9,9,9,9,9, "3", 9, "GE 4", 10, 0
    mm321   db "[O] MM 321",9,9, "Pricing Strategy", 9, 9,9,9,9,"3", 9, "MM 212", 10, 0
    mm312   db "[P] MM 312", 9,9, "Retail Management", 9,9,9,9,9, "3", 9, "MM 311", 10, 0
    mm221   db "[Q] MM 221", 9,9, "Distribution Management", 9,9,9,9,9, "3", 9, "MM 311", 10, 0
    pahf4   db "[R] PAHF 4",9,9, "Dance and Sports 2", 9,9,9,9,9, "2", 9, "PAHF 3", 10, 0
    
    totalunits22  db "Total Units", 9,9,9,9,9,9,9,9,9, "26", 10, 0



    ; Third Year First Semester
    sem31 db 10, "Third Year First Semester", 10, 0
    tableHeader31 db "Code", 9,9,9, "Title", 9,9,9,9,9,9,9,"Units", 9, "Prerequisites", 10, 0


    mme321   db "[A] MME 321",9,9, "Services Marketing", 9,9,9,9,9, "3", 9, "MM 212", 10, 0
    mme322   db "[B] MME 322",9,9, "Industrial/Agricultural Marketing", 9,9,9, "3", 9, "MM 311", 10, 0
    acc321   db "[C] ACC 321",9,9, "Business Taxation", 9,9,9,9,9, "3", 9, "ACC 311", 10, 0
    mm224   db "[D] MM 224",9,9, "E-commerce and Internet Marketing", 9,9,9, "3", 9, "MM 212", 10, 0
    cbm321   db "[E] CBM 321",9,9, "International Business and Trade", 9,9,9, "3", 9, "ACC 216", 10, 0
    cbm300   db "[F] CBM 300",9,9, "Methods and Research", 9,9,9,9,9, "3", 9, "UGE 2", 10, 0
    nstp1   db "[G] NSTP 1",9,9, "National Service Training Program 1", 9,9, 9,"3", 9, "None", 10, 0
    
    totalunits31   db "Total Units", 9, 9,9,9,9,9,9,9,"21", 10, 0



    ; Third Year Second Semester
    sem32 db 10,"Third Year Second Semester", 10, 0
    tableHeader32 db "Code", 9,9,9, "Title", 9,9,9,9,9,9,9, "Units", 9, "Prerequisites", 10, 0


    mm301   db "[H] MM 301",9,9, "Business Research", 9,9,9,9,9, "3", 9, "CBM 300", 10, 0
    ge9   db "[I] GE 9",9,9, "Ethics (Disciplinal)", 9,9,9,9,9, "3", 9, "None", 10, 0
    mme324   db "[J] MME 324",9,9, "International Marketing", 9,9,9,9,9, "3", 9, "CBM 321", 10, 0
    mm217   db "[K] MM 217",9,9, "Public Relations", 9,9,9,9,9, "3", 9, "MM 216", 10, 0
    mm213   db "[L] MM 213",  9,9,"Marketing Analytics", 9,9,9,9,9, "3", 9, "GE 4, MM 224", 10, 0
    mme312   db "[M] MME 312", 9,9, "Sales Management", 9,9,9,9,9, "3", 9, "MM 211", 10, 0
    nstp2   db "[N] NSTP 2",9,9, "National Service Training Program 2", 9,9,9, "3", 9, "NSTP 1", 10, 0
    
    totalunits32   db "Total Units", 9,9,9,9,9,9,9,9, "21", 10, 0



    ; Fourth Year First Semester
    sem41 db 10, "Fourth Year First Semester", 10, 0
    tableHeader41 db "Code", 9,9,9, "Title", 9,9,9,9,9,9,9, "Units", 9, "Prerequisites", 10, 0


    acc214   db "[A] ACC 214/L", 9,9, "IT Application Tools in Business", 9,9,9, "2", 9, "GE 4", 10, 0
    ge8   db "[B] GE 8", 9,9, "Readings in Philippine History", 9, 9,9,9,"3", 9, "None", 10, 0
    mme323   db "[C] MME 323",  9,9,"Special Topics in Marketing Management", 9,9,9, "3", 9, "4th yr standing", 10, 0
    caed500   db "[D] CAED 500", 9,9, "Carreer and Personality Development", 9,9, 9,"3", 9, "4th yr standing", 10, 0
    mm223   db "[E] MM 223", 9,9, "Marketing Management", 9,9,9,9,9, "3", 9, "4th yr standing", 10, 0
    
    totalUnits   db "Total Units", 9, 9,9,9,9,9,9,9, 10, 0



    ; Fourth Year Second Semester
    sem42 db 10,"Fourth Year Second Semester", 10, 0
    tableHeader42 db "Code", 9,9,9, "Title", 9,9,9,9,9,9,9, "Units", 9, "Prerequisites", 10, 0


    mm411   db "[F] MM 411",9, 9,"Practicum",9,9,9,9,9,9, "6", 9, "MM 301", 10, 0
    
    totalunits42   db "Total Units", 9,9,9,9,9,9,9,9, "6", 10, 0
    
  ;sem choices and prompts
  
    select db 10,9, "Please select the chosen year and semester",10
    enroll db 10,9, "Enroll subjects: ",0
    invalid db 9, "Invalid. Retry input.",0
    totalunits db 10,9,"Total Units: ",0
    selectcourseprompt db 10,9, "Type the corresponding letter to your desired subject || Press Z to confirm... ",0

    first1sem db 10,10, 9, "1. First Year/First Semester", 10, 0
    first2sem db 9, "2. First Year/Second Semester", 10,0
    second1sem db 9, "3. Second Year/First Semester", 10,0
    second2sem db 9, "4. Second Year/Second Semester", 10,0
    third1sem db 9, "5. Third Year/First Semester", 10,0
    third2sem db 9, "6. Third Year/Second Semester", 10,0
    fourth1sem db 9, "7. Fourth Year/First Semester", 10,0
    fourth2sem db 9, "8. Fourth Year/Second Semester", 10,0

       
		Sub_En db 10,10, "Subjects enrolled this sem: ",10,0
		print1 db 256 dup (0)
		print2 db 256 dup (0)
		print3 db 256 dup (0)
		print4 db 256 dup (0)
		print5 db 256 dup (0)
		print6 db 256 dup (0)
		print7 db 256 dup (0)
		print8 db 256 dup (0)
        print9 db 256 dup (0)
		print10 db 256 dup (0)
		print11 db 256 dup (0)
		print12 db 256 dup (0)
		print13 db 256 dup (0)
		print14 db 256 dup (0)
		print15 db 256 dup (0)
		print16 db 256 dup (0)
        

       
        
        
        
        temp DWORD ? 
       
        
        
        
    
              


.data?
        yearsem db 50 dup (?)
        mainreg db 50 dup (?)
        
		Name_Input db 50 dup(?)
        ID_Input db 20 dup(?)
.code   
start:
        invoke ClearScreen
		mov print1,0
		mov print2,0
		mov print3,0
		mov print4,0
		mov print5,0
		mov print6,0
		mov print7,0
		mov print8,0
        mov print9,0
		mov print10,0
		mov print11,0
		mov print12,0
		mov print13,0
		mov print14,0
		mov print15,0
		mov print16,0
                
		
	;name input
        invoke StdOut, addr hello
        invoke StdOut, addr namelabel
        invoke StdIn, addr Name_Input, 100 
        invoke StdOut, addr idlabel
        invoke StdIn, addr ID_Input, 100 
		jmp begin
begin:
        invoke ClearScreen
        invoke StdOut, addr UM
        invoke StdOut, addr Dep
        invoke StdOut, addr prog
        invoke StdOut, addr breakline
	    invoke StdOut, addr breakline

        ;first year first sem
        
        invoke StdOut, addr sem11
        invoke StdOut, addr tableHeader11
        invoke StdOut, addr ge2
        invoke StdOut, addr ge1
        invoke StdOut, addr ge4
        invoke StdOut, addr ba100
        invoke StdOut, addr bahr211
        invoke StdOut, addr accbp100
        invoke StdOut, addr pahf1
        
                
        ;first year second sem 
        
        invoke StdOut, addr sem12
        invoke StdOut, addr tableHeader12
        invoke StdOut, addr bahr213
        invoke StdOut, addr ge15
        invoke StdOut, addr be121
        invoke StdOut, addr mm212
        invoke StdOut, addr uge1
        invoke StdOut, addr ge3
        invoke StdOut, addr pahf2

        ;second year first sem
        
        invoke StdOut, addr sem21
        invoke StdOut, addr tableHeader21
        invoke StdOut, addr uge2
        invoke StdOut, addr cbm112
        invoke StdOut, addr acc216
        invoke StdOut, addr ge6
        invoke StdOut, addr mm216
        invoke StdOut, addr mm211
        invoke StdOut, addr mm311
        invoke StdOut, addr ge5
        invoke StdOut, addr pahf3


        ;second year second sem
        
        invoke StdOut, addr sem22
        invoke StdOut, addr tableHeader22
        invoke StdOut, addr ge20
        invoke StdOut, addr ge11
        invoke StdOut, addr ge7
        invoke StdOut, addr cbm121
        invoke StdOut, addr acc311
        invoke StdOut, addr mm321
        invoke StdOut, addr mm312
        invoke StdOut, addr mm221
        invoke StdOut, addr pahf4


        ;third year first sem
        
        invoke StdOut, addr sem31
        invoke StdOut, addr tableHeader31
        invoke StdOut, addr mme321
        invoke StdOut, addr mme322
        invoke StdOut, addr acc321
        invoke StdOut, addr mm224
        invoke StdOut, addr cbm321
        invoke StdOut, addr cbm300
        invoke StdOut, addr nstp1
        



        ;third year second sem
        invoke StdOut, addr sem32
        invoke StdOut, addr tableHeader32

        invoke StdOut, addr mm301
        invoke StdOut, addr ge9
        invoke StdOut, addr mme324
        invoke StdOut, addr mm217
        invoke StdOut, addr mm213
        invoke StdOut, addr mme312
        
        invoke StdOut, addr nstp2

        
        ;fourth year first sem
        invoke StdOut, addr sem41
        invoke StdOut, addr tableHeader41

        invoke StdOut, addr acc214
        invoke StdOut, addr ge8
        invoke StdOut, addr mme323
        invoke StdOut, addr caed500
        invoke StdOut, addr mm223
       
        ;fourth year second sem
        invoke StdOut, addr sem42
        invoke StdOut, addr tableHeader42

        invoke StdOut, addr mm411
                

	        jmp choices

choices:
        ;choices
        invoke StdOut, addr first1sem
        invoke StdOut, addr first2sem
        invoke StdOut, addr second1sem
        invoke StdOut, addr second2sem
        invoke StdOut, addr third1sem
        invoke StdOut, addr third2sem
        invoke StdOut, addr fourth1sem
        invoke StdOut, addr fourth2sem
        
        ;functions
        invoke StdOut, addr select
        invoke StdIn, addr yearsem, 10
        .if yearsem == '1'
                jmp firstyear1
        .elseif yearsem == '2'
                jmp firstyear2
        .elseif yearsem == '3'
                jmp secondyear1
        .elseif yearsem == '4'
                jmp secondyear2
        .elseif yearsem == '5'
                jmp thirdyear1
        .elseif yearsem == '6'
                jmp thirdyear2
        .elseif yearsem == '7'
                jmp fourthyear1
        .elseif yearsem == '8'
                jmp fourthyear2
        .endif

firstyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	    invoke StdOut, addr Dep
        invoke StdOut, addr prog
	    invoke StdOut, addr breakline
	    invoke StdOut, addr namefinal
	    invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input

        invoke StdOut, addr sem11
        invoke StdOut, addr tableHeader11
        invoke StdOut, addr ge2
        invoke StdOut, addr ge1
        invoke StdOut, addr ge4
        invoke StdOut, addr ba100
        invoke StdOut, addr bahr211
        invoke StdOut, addr accbp100
        invoke StdOut, addr pahf1
        jmp select1

select1:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        .if mainreg == "A"
                add eax, 6
                sub eax, 1
                add temp, eax 
                invoke StdOut, addr ge2
				mov esi, OFFSET ge2
                mov edi, OFFSET print1
                mov ecx, SIZEOF ge2
                cld
                rep movsb
        .elseif mainreg == "B"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge1
				mov esi, OFFSET ge1
                mov edi, OFFSET print2
                mov ecx, SIZEOF ge1
                cld
                rep movsb
        .elseif mainreg == "C"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge4
				mov esi, OFFSET ge4
                mov edi, OFFSET print3
                mov ecx, SIZEOF ge4
                cld
                rep movsb
        .elseif mainreg == "D"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ba100
				mov esi, OFFSET ba100
                mov edi, OFFSET print4
                mov ecx, SIZEOF ba100
                cld
                rep movsb
        .elseif mainreg == "E"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr bahr211
				mov esi, OFFSET bahr211
                mov edi, OFFSET print5
                mov ecx, SIZEOF bahr211
                cld
                rep movsb
        .elseif mainreg == "F"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr accbp100
				mov esi, OFFSET accbp100
                mov edi, OFFSET print6
                mov ecx, SIZEOF accbp100
                cld
                rep movsb
        .elseif mainreg == "G"
                add eax, 2
                sub eax, 1
                add temp, eax
                invoke StdOut, addr pahf1
				mov esi, OFFSET pahf1
                mov edi, OFFSET print7
                mov ecx, SIZEOF pahf1
                cld
                rep movsb
        
        .else
        jmp total1st
        .endif
        jmp select1

total1st:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print1st
print1st:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
                invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
                invoke StdOut, addr idnumber
                invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		
		invoke StdOut, addr sem11
		invoke StdOut, addr tableHeader11
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		invoke StdOut, addr print3
		invoke StdOut, addr print4
		invoke StdOut, addr print5
		invoke StdOut, addr print6
		invoke StdOut, addr print7
		

		invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit

	

firstyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr Dep
        invoke StdOut, addr prog
	invoke StdOut, addr breakline
	invoke StdOut, addr namefinal
	invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input
        invoke StdOut, addr sem12
        invoke StdOut, addr tableHeader12
        invoke StdOut, addr bahr213
        invoke StdOut, addr ge15
        invoke StdOut, addr be121
        invoke StdOut, addr mm212
        invoke StdOut, addr uge1
        invoke StdOut, addr ge3
        invoke StdOut, addr pahf2
        jmp select2

select2:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        .if mainreg == "H"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr bahr213
				mov esi, OFFSET bahr213
                mov edi, OFFSET print8
                mov ecx, SIZEOF bahr213
                cld
                rep movsb
        .elseif mainreg == "I"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge15
				mov esi, OFFSET ge15
                mov edi, OFFSET print9
                mov ecx, SIZEOF ge15
                cld
                rep movsb
         .elseif mainreg == "J"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr be121
				mov esi, OFFSET be121
                mov edi, OFFSET print10
                mov ecx, SIZEOF be121
                cld
                rep movsb
        .elseif mainreg == "K"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm212
				mov esi, OFFSET mm212
                mov edi, OFFSET print11
                mov ecx, SIZEOF mm212
                cld
                rep movsb
        .elseif mainreg == "L"
                add eax, 6
                sub eax, 1
                add temp, eax
                invoke StdOut, addr uge1
				mov esi, OFFSET uge1
                mov edi, OFFSET print12
                mov ecx, SIZEOF uge1
                cld
                rep movsb
        .elseif mainreg == "M"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge3
				mov esi, OFFSET ge3
                mov edi, OFFSET print13
                mov ecx, SIZEOF ge3
                cld
                rep movsb
        .elseif mainreg == "N"
                add eax, 2
                sub eax, 1
                add temp, eax
                invoke StdOut, addr pahf2
				mov esi, OFFSET pahf2
                mov edi, OFFSET print14
                mov ecx, SIZEOF pahf2
                cld
                rep movsb
        
        .else
        jmp total1st2
        .endif
        jmp select2

total1st2:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print1st2

print1st2:
                invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
                invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
                invoke StdOut, addr idnumber
                invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		
		invoke StdOut, addr sem12
		invoke StdOut, addr tableHeader11
                invoke StdOut, addr print8
                invoke StdOut, addr print9
                invoke StdOut, addr print10
                invoke StdOut, addr print11
                invoke StdOut, addr print12
                invoke StdOut, addr print13
                invoke StdOut, addr print14
                invoke StdOut, addr print15
                invoke StdOut, addr print16

                invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit


secondyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr Dep
        invoke StdOut, addr prog
	invoke StdOut, addr breakline
	invoke StdOut, addr namefinal
	invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input

        invoke StdOut, addr sem21
        invoke StdOut, addr tableHeader21
        invoke StdOut, addr uge2
        invoke StdOut, addr cbm112
        invoke StdOut, addr acc216
        invoke StdOut, addr ge6
        invoke StdOut, addr mm216
        invoke StdOut, addr mm211
        invoke StdOut, addr mm311
        invoke StdOut, addr ge5
        invoke StdOut, addr pahf3
        
        jmp select21

select21:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        .if mainreg == "A"
                add eax, 3
                sub eax, 1
                add temp, eax 
                invoke StdOut, addr uge2
				mov esi, OFFSET uge2
                mov edi, OFFSET print1
                mov ecx, SIZEOF uge2
                cld
                rep movsb
        .elseif mainreg == "B"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr cbm112
				mov esi, OFFSET cbm112
                mov edi, OFFSET print2
                mov ecx, SIZEOF cbm112
                cld
                rep movsb
        .elseif mainreg == "C"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr acc216
				mov esi, OFFSET acc216
                mov edi, OFFSET print3
                mov ecx, SIZEOF acc216
                cld
                rep movsb
        .elseif mainreg == "D"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge6
				mov esi, OFFSET ge6
                mov edi, OFFSET print4
                mov ecx, SIZEOF ge6
                cld
                rep movsb
        .elseif mainreg == "E"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm216
				mov esi, OFFSET mm216
                mov edi, OFFSET print5
                mov ecx, SIZEOF mm216
                cld
                rep movsb
        .elseif mainreg == "F"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm211
				mov esi, OFFSET mm211
                mov edi, OFFSET print6
                mov ecx, SIZEOF mm211
                cld
                rep movsb
        .elseif mainreg == "G"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm311
				mov esi, OFFSET mm311
                mov edi, OFFSET print7
                mov ecx, SIZEOF mm311
                cld
                rep movsb
         .elseif mainreg == "H"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge5
				mov esi, OFFSET ge5
                mov edi, OFFSET print8
                mov ecx, SIZEOF ge5
                cld
                rep movsb
        .elseif mainreg == "I"
                add eax, 2
                sub eax, 1
                add temp, eax 
                invoke StdOut, addr pahf3
				mov esi, OFFSET pahf3
                mov edi, OFFSET print9
                mov ecx, SIZEOF pahf3
                cld
                rep movsb
        .else
        jmp total2nd
        .endif
        jmp select21

total2nd:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print2nd

print2nd:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
                invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
            invoke StdOut, addr idnumber
            invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		
		invoke StdOut, addr sem21
		invoke StdOut, addr tableHeader21
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		invoke StdOut, addr print3
		invoke StdOut, addr print4
		invoke StdOut, addr print5
		invoke StdOut, addr print6
		invoke StdOut, addr print7
		invoke StdOut, addr print8
        invoke StdOut, addr print9
		
		
		invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit


;2ND YEAR 2ND SEM
secondyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	    invoke StdOut, addr Dep
        invoke StdOut, addr prog
	    invoke StdOut, addr breakline
	    invoke StdOut, addr namefinal
	    invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input

        invoke StdOut, addr sem22
        invoke StdOut, addr tableHeader22
        invoke StdOut, addr ge20
        invoke StdOut, addr ge11
        invoke StdOut, addr ge7
        invoke StdOut, addr cbm121
        invoke StdOut, addr acc311
        invoke StdOut, addr mm321
        invoke StdOut, addr mm312
        invoke StdOut, addr mm221
        invoke StdOut, addr pahf4
        
        jmp select22

select22:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        
        .if mainreg == "J"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge20
				mov esi, OFFSET ge20
                mov edi, OFFSET print1
                mov ecx, SIZEOF ge20
                cld
                rep movsb
        .elseif mainreg == "K"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge11
				mov esi, OFFSET ge11
                mov edi, OFFSET print2
                mov ecx, SIZEOF ge11
                cld
                rep movsb
        .elseif mainreg == "L"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge7
				mov esi, OFFSET ge7
                mov edi, OFFSET print3
                mov ecx, SIZEOF ge7
                cld
                rep movsb
        .elseif mainreg == "M"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr cbm121
				mov esi, OFFSET cbm121
                mov edi, OFFSET print4
                mov ecx, SIZEOF cbm121
                cld
                rep movsb
        .elseif mainreg == "N"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr acc311
				mov esi, OFFSET acc311
                mov edi, OFFSET print5
                mov ecx, SIZEOF acc311
                cld
                rep movsb
        .elseif mainreg == "O"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm321
				mov esi, OFFSET mm321
                mov edi, OFFSET print6
                mov ecx, SIZEOF mm321
                cld
                rep movsb
        .elseif mainreg == "P"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm312
				mov esi, OFFSET mm312
                mov edi, OFFSET print7
                mov ecx, SIZEOF mm312
                cld
                rep movsb
        .elseif mainreg == "Q"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm221
				mov esi, OFFSET mm221
                mov edi, OFFSET print8
                mov ecx, SIZEOF mm221
                cld
                rep movsb
        .elseif mainreg == "R"
                add eax, 2
                sub eax, 1
                add temp, eax
                invoke StdOut, addr pahf4
				mov esi, OFFSET pahf4
                mov edi, OFFSET print9
                mov ecx, SIZEOF pahf4
                cld
                rep movsb
        .else
        jmp total2nd2
        .endif
        jmp select22

total2nd2:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print2nd2

print2nd2:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
                invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
            invoke StdOut, addr idnumber
            invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		
		invoke StdOut, addr sem22
                invoke StdOut, addr tableHeader22
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		invoke StdOut, addr print3
		invoke StdOut, addr print4
		invoke StdOut, addr print5
		invoke StdOut, addr print6
		invoke StdOut, addr print7
		invoke StdOut, addr print8
        invoke StdOut, addr print9
		
		
		invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit


;3RD YEAR FIRST SEM
thirdyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr Dep
        invoke StdOut, addr prog
	invoke StdOut, addr breakline
	invoke StdOut, addr namefinal
	invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input

        invoke StdOut, addr sem31
        invoke StdOut, addr tableHeader31
        invoke StdOut, addr mme321
        invoke StdOut, addr mme322
        invoke StdOut, addr acc321
        invoke StdOut, addr mm224
        invoke StdOut, addr cbm321
        invoke StdOut, addr cbm300
        invoke StdOut, addr nstp1
        
        jmp select31

select31:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        .if mainreg == "A"
                add eax, 3
                sub eax, 1
                add temp, eax 
                invoke StdOut, addr mme321
				mov esi, OFFSET mme321
                mov edi, OFFSET print1
                mov ecx, SIZEOF mme321
                cld
                rep movsb
        .elseif mainreg == "B"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mme322
				mov esi, OFFSET mme322
                mov edi, OFFSET print2
                mov ecx, SIZEOF mme322
                cld
                rep movsb
        .elseif mainreg == "C"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr acc321
				mov esi, OFFSET acc321
                mov edi, OFFSET print3
                mov ecx, SIZEOF acc321
                cld
                rep movsb
        .elseif mainreg == "D"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm224
				mov esi, OFFSET mm224
                mov edi, OFFSET print4
                mov ecx, SIZEOF mm224
                cld
                rep movsb
        .elseif mainreg == "E"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr cbm321
				mov esi, OFFSET cbm321
                mov edi, OFFSET print5
                mov ecx, SIZEOF cbm321
                cld
                rep movsb
        .elseif mainreg == "F"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr cbm300
				mov esi, OFFSET cbm300
                mov edi, OFFSET print6
                mov ecx, SIZEOF cbm300
                cld
                rep movsb
        .elseif mainreg == "G"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr nstp1
				mov esi, OFFSET nstp1
                mov edi, OFFSET print7
                mov ecx, SIZEOF nstp1
                cld
                rep movsb
        
        .else
        jmp total3rd
        .endif
        jmp select31

total3rd:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print3rd

print3rd:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
                invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
            invoke StdOut, addr idnumber
            invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		

		invoke StdOut, addr sem21
		invoke StdOut, addr tableHeader21
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		invoke StdOut, addr print3
		invoke StdOut, addr print4
		invoke StdOut, addr print5
		invoke StdOut, addr print6
		invoke StdOut, addr print7
		
		
		invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit

;3RD YEAR SECOND SEM
thirdyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	    invoke StdOut, addr Dep
        invoke StdOut, addr prog
	    invoke StdOut, addr breakline
	    invoke StdOut, addr namefinal
	    invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input

        invoke StdOut, addr sem32
        invoke StdOut, addr tableHeader32

        invoke StdOut, addr mm301
        invoke StdOut, addr ge9
        invoke StdOut, addr mme324
        invoke StdOut, addr mm217
        invoke StdOut, addr mm213
        invoke StdOut, addr mme312
        invoke StdOut, addr nstp2
        jmp select32

select32:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        .if mainreg == "H"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm301
				mov esi, OFFSET mm301
                mov edi, OFFSET print1
                mov ecx, SIZEOF mm301
                cld
                rep movsb
        .elseif mainreg == "I"
                add eax, 3
                sub eax, 1
                add temp, eax 
                invoke StdOut, addr ge9
				mov esi, OFFSET ge9
                mov edi, OFFSET print2
                mov ecx, SIZEOF ge9
                cld
                rep movsb
        .elseif mainreg == "J"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mme324
				mov esi, OFFSET mme324
                mov edi, OFFSET print3
                mov ecx, SIZEOF mme324
                cld
                rep movsb
        .elseif mainreg == "K"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm217
				mov esi, OFFSET mm217
                mov edi, OFFSET print4
                mov ecx, SIZEOF mm217
                cld
                rep movsb
        .elseif mainreg == "L"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm213
				mov esi, OFFSET mm213
                mov edi, OFFSET print5
                mov ecx, SIZEOF mm213
                cld
                rep movsb
        .elseif mainreg == "M"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mme312
				mov esi, OFFSET mme312
                mov edi, OFFSET print6
                mov ecx, SIZEOF mme312
                cld
                rep movsb
        .elseif mainreg == "N"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr nstp2
				mov esi, OFFSET nstp2
                mov edi, OFFSET print7
                mov ecx, SIZEOF nstp2
                cld
                rep movsb
        
        .else
        jmp total3rd2
        .endif
        jmp select32

total3rd2:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print3rd2

print3rd2:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
                invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
            invoke StdOut, addr idnumber
            invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En

		
		invoke StdOut, addr sem21
		invoke StdOut, addr tableHeader21
		
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		invoke StdOut, addr print3
		invoke StdOut, addr print4
		invoke StdOut, addr print5
		invoke StdOut, addr print6
		invoke StdOut, addr print7
		
		
		
		invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit


;4TH YEAR FIRST SEM
fourthyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	    invoke StdOut, addr Dep
        invoke StdOut, addr prog
	    invoke StdOut, addr breakline
	    invoke StdOut, addr namefinal
	    invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input

        invoke StdOut, addr sem41
        invoke StdOut, addr tableHeader41

        invoke StdOut, addr acc214
        invoke StdOut, addr ge8
        invoke StdOut, addr mme323
        invoke StdOut, addr caed500
        invoke StdOut, addr mm223
       
        
        jmp select41

select41:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        .if mainreg == "A"
                add eax, 2
                sub eax, 1
                add temp, eax 
                invoke StdOut, addr acc214
				mov esi, OFFSET acc214
                mov edi, OFFSET print1
                mov ecx, SIZEOF acc214
                cld
                rep movsb
        .elseif mainreg == "B"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr ge8
				mov esi, OFFSET ge8
                mov edi, OFFSET print2
                mov ecx, SIZEOF ge8
                cld
                rep movsb
        .elseif mainreg == "C"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mme323
				mov esi, OFFSET mme323
                mov edi, OFFSET print3
                mov ecx, SIZEOF mme323
                cld
                rep movsb
        .elseif mainreg == "D"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr caed500
				mov esi, OFFSET caed500
                mov edi, OFFSET print4
                mov ecx, SIZEOF caed500
                cld
                rep movsb
        .elseif mainreg == "E"
                add eax, 3
                sub eax, 1
                add temp, eax
                invoke StdOut, addr mm223
				mov esi, OFFSET mm223
                mov edi, OFFSET print5
                mov ecx, SIZEOF mm223
                cld
                rep movsb
        .else
        jmp total4th
        .endif
        jmp select41

total4th:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print4th

print4th:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
        invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
            invoke StdOut, addr idnumber
            invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		

		invoke StdOut, addr sem41
                invoke StdOut, addr tableHeader41
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		invoke StdOut, addr print3
		invoke StdOut, addr print4
		invoke StdOut, addr print5
		
		
		invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit

;fourth year 2nd sem
fourthyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	    invoke StdOut, addr Dep
        invoke StdOut, addr prog
	    invoke StdOut, addr breakline
	    invoke StdOut, addr namefinal
	    invoke StdOut, addr Name_Input
        invoke StdOut, addr idnumber
        invoke StdOut, addr ID_Input

        invoke StdOut, addr sem42
        invoke StdOut, addr tableHeader42

        invoke StdOut, addr mm411
        
        jmp select42

select42:
        invoke StdOut, addr selectcourseprompt 
        invoke StdIn, addr mainreg, 10
        .if mainreg == "F"
                add eax, 6
                sub eax, 1
                add temp, eax 
                invoke StdOut, addr mm411
				mov esi, OFFSET mm411
                mov edi, OFFSET print1
                mov ecx, SIZEOF mm411
                cld
                rep movsb
        .else
        jmp total4th2
        .endif
        jmp select42

total4th2:
        mov eax, temp
        invoke dwtoa, eax, addr mainreg
        jmp print4th2

print4th2:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr Dep
        invoke StdOut, addr prog
		invoke StdOut, addr breakline
		invoke StdOut, addr namefinal
		invoke StdOut, addr Name_Input
            invoke StdOut, addr idnumber
            invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		

		invoke StdOut, addr sem42
        invoke StdOut, addr tableHeader42
		
		invoke StdOut, addr print1
		
		
		invoke StdOut, addr totalUnits
		invoke StdOut, addr mainreg
		
		jmp exit


exit:
        invoke ExitProcess, 0
end start


    