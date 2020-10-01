@AbapCatalog.sqlViewName: 'ZIDTEXTTESTV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Z_ID_TEXT_TEST_View'
//@UI.headerInfo.title: { value: 'Id_Text' }
define view Z_ID_TEXT_TEST_View as select from zid_text_test

  association [0..*] to Z_ID_TEXT_TEST_ViewText as _Text on $projection.Id = _Text.Id
    
{

  @Semantics.uuid
  @ObjectModel.text.association: '_Text' 
  key id as Id,
  
  _Text
}
