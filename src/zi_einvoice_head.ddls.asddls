@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'E-Invoicing Header View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_EINVOICE_HEAD
  as select from    I_BillingDocument as _header
    left outer join zei_invrefnum on _header.BillingDocument = zei_invrefnum.docno
    left outer join zew_ewaybill  on _header.BillingDocument = zew_ewaybill.docno
    left outer join ztsd_ei_log   on _header.BillingDocument = ztsd_ei_log.docno

{
  key  _header.CompanyCode         as CompanyCode,
  key  _header.BillingDocument     as BillingDocument,
       _header.BillingDocumentDate as BillingDocumentDate,
       _header.BillingDocumentType as BillingDocumentType,
       zei_invrefnum.irn           as Irn,
       zei_invrefnum.irn_status    as IrnStatus,
       zew_ewaybill.ebillno        as EbillNo,
       zew_ewaybill.status         as Status,
       ztsd_ei_log.message         as MSG

}
