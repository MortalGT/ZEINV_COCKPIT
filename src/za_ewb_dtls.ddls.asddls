@EndUserText.label: 'E-Way Bill Details'
@Metadata.allowExtensions: true
define abstract entity ZA_EWB_DTLS
  //  with parameters parameter_name : parameter_type
{

  trans_id   : zei_trans_id;
  trans_nm   : zde_transname;
  distance   : zde_distance;
  vehno      : zde_vehno;
//  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_VEHTYPE_DETAILS', element: 'value' } }]
  vehtype    : zei_vehtype; //zei_vehtype;
  trans_mode : zei_trans_mode; //zei_trans_mode;
  transdocno : zde_trans_docno;
  transdt    : zde_trans_date;

}
