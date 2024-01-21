IDENTIFICATION DIVISION.
PROGRAM-ID. BankingSystem.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT AccountFile ASSIGN TO "ACCOUNTS.DAT"
    ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD  AccountFile.
01  AccountRecord.
    05  AccountNumber   PIC 9(4).
    05  AccountName     PIC X(30).
    05  AccountBalance  PIC 9(6)V99.

WORKING-STORAGE SECTION.
01  WS-AccountRecord    LIKE AccountRecord.
01  Choice              PIC X.

PROCEDURE DIVISION.
100-Start.
    OPEN I-O AccountFile.
    PERFORM UNTIL Choice = '4'
        DISPLAY "Banking System"
        DISPLAY "1. Create Account"
        DISPLAY "2. Deposit"
        DISPLAY "3. Withdraw"
        DISPLAY "4. Exit"
        ACCEPT Choice
        EVALUATE Choice
            WHEN '1' PERFORM CreateAccount
            WHEN '2' PERFORM DepositMoney
            WHEN '3' PERFORM WithdrawMoney
        END-EVALUATE
    END-PERFORM.
    CLOSE AccountFile.
    STOP RUN.

CreateAccount.
    * Logic to create a new account
    DISPLAY "Creating a new account...".

DepositMoney.
    * Logic to deposit money
    DISPLAY "Depositing money...".

WithdrawMoney.
    * Logic to withdraw money
    DISPLAY "Withdrawing money...".

END PROGRAM BankingSystem.
