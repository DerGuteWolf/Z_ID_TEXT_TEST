@AbapCatalog.sqlViewName: 'ZIDTEXTTESTT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Z_ID_TEXT_TEST_ViewText'
define view Z_ID_TEXT_TEST_ViewText as select from zid_text_test_t {
  key id as Id,
  
  @Semantics.language
  key language as Language,
  
  @Semantics.text
  description as Description
}
