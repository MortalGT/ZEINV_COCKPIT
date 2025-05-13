CLASS lhc_zi_einvoice_head DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_einvoice_head RESULT result.

    METHODS createirn FOR MODIFY
      IMPORTING keys FOR ACTION zi_einvoice_head~createirn RESULT result.

    METHODS json FOR MODIFY
      IMPORTING keys FOR ACTION zi_einvoice_head~json RESULT result.

    METHODS updewb FOR MODIFY
      IMPORTING keys FOR ACTION zi_einvoice_head~updewb RESULT result.
    METHODS updateewb FOR MODIFY
      IMPORTING keys FOR ACTION zi_einvoice_head~updateewb RESULT result.

ENDCLASS.

CLASS lhc_zi_einvoice_head IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD createirn.
  ENDMETHOD.

  METHOD json.
  ENDMETHOD.

  METHOD updewb.
  ENDMETHOD.

  METHOD UpdateEwB.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_zi_einvoice_head DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_zi_einvoice_head IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
