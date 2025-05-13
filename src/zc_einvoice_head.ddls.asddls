@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consuption View for Invoice Head'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
//@Search.searchable: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZC_EINVOICE_HEAD
  provider contract transactional_query
  as projection on ZI_EINVOICE_HEAD
{

       @EndUserText.label: 'Company Code'
       @Consumption.valueHelpDefinition: [{ entity: { name: 'I_BillingDocument', element: 'CompanyCode' } }]
  key  CompanyCode         as CompanyCode,
       @EndUserText.label: 'Billing Document'
       @Consumption.valueHelpDefinition: [{ entity: { name: 'I_BillingDocument', element: 'BillingDocument' } }]
  key  BillingDocument     as BillingDocument,
       @EndUserText.label: 'Billing Document Date'
       BillingDocumentDate as BillingDocumentDate,
       @EndUserText.label: 'Billing Document Type'
       BillingDocumentType as BillingDocumentType,
       @EndUserText.label: 'Invoice Ref. Number'
       Irn                 as Irn,
       @EndUserText.label: 'IRN Status'
       IrnStatus           as IrnStatus,
       @EndUserText.label: 'E-WayBill No.'
       EbillNo             as EbillNo,
       @EndUserText.label: 'E-WayBill Status'
       Status              as Status,
       @EndUserText.label: 'Message'
       MSG                 as MSG

}
