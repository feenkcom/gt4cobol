Trait {
	#name : 'TCobolProgramNodeVisitor',
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : 'GToolkit4Cobol-Parser',
	#package : 'GToolkit4Cobol',
	#tag : 'Parser'
}

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAbbreviation: anAbbreviation [
	^ self visitProgram: anAbbreviation
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAcceptStatement: anAcceptStatement [
	^ self visitStatement: anAcceptStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAccessModeClause: anAccessModeClause [
	^ self visitProgram: anAccessModeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAddStatement: anAddStatement [
	^ self visitStatement: anAddStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAllSubscript: anAllSubscript [
	^ self visitProgram: anAllSubscript
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAlphabetClause: anAlphabetClause [
	^ self visitProgram: anAlphabetClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAlterProceedTo: anAlterProceedTo [
	^ self visitProgram: anAlterProceedTo
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAlterStatement: anAlterStatement [
	^ self visitStatement: anAlterStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAlternateRecordKeyClause: anAlternateRecordKeyClause [
	^ self visitProgram: anAlternateRecordKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAnyCondition: anAnyCondition [
	^ self visitProgram: anAnyCondition
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAssignClause: anAssignClause [
	^ self visitProgram: anAssignClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitAuthorParagraph: anAuthorParagraph [
	^ self visitProgram: anAuthorParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitBlockContainsClause: aBlockContainsClause [
	^ self visitProgram: aBlockContainsClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCallStatement: aCallStatement [
	^ self visitStatement: aCallStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCancelStatement: aCancelStatement [
	^ self visitStatement: aCancelStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitChannelClause: aChannelClause [
	^ self visitProgram: aChannelClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCharacterSetClause: aCharacterSetClause [
	^ self visitProgram: aCharacterSetClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCicsDfhRespLiteral: aCicsDfhRespLiteral [
	^ self visitExpression: aCicsDfhRespLiteral
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCicsDfhValueLiteral: aCicsDfhValueLiteral [
	^ self visitExpression: aCicsDfhValueLiteral
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitClassClause: aClassClause [
	^ self visitProgram: aClassClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitClassConditionExpression: aClassConditionExpression [
	^ self visitExpression: aClassConditionExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCloseFile: aCloseFile [
	^ self visitProgram: aCloseFile
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCloseStatement: aCloseStatement [
	^ self visitStatement: aCloseStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCodeSetClause: aCodeSetClause [
	^ self visitProgram: aCodeSetClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCollatingSequenceClause: aCollatingSequenceClause [
	^ self visitProgram: aCollatingSequenceClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCombinedComparisonExpression: aCombinedComparisonExpression [
	^ self visitExpression: aCombinedComparisonExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCommitmentControlClause: aCommitmentControlClause [
	^ self visitProgram: aCommitmentControlClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCommunicationDescriptionEntry: aCommunicationDescriptionEntry [
	^ self visitProgram: aCommunicationDescriptionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCommunicationSection: aCommunicationSection [
	^ self visitProgram: aCommunicationSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitComparisonExpression: aComparisonExpression [
	^ self visitExpression: aComparisonExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitComputeStatement: aComputeStatement [
	^ self visitStatement: aComputeStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitConfigurationSection: aConfigurationSection [
	^ self visitProgram: aConfigurationSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitCurrencySignClause: aCurrencySignClause [
	^ self visitProgram: aCurrencySignClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataAlignedClause: aDataAlignedClause [
	^ self visitProgram: aDataAlignedClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataBaseSection: aDataBaseSection [
	^ self visitProgram: aDataBaseSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataBaseSectionEntry: aDataBaseSectionEntry [
	^ self visitProgram: aDataBaseSectionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataBlankWhenZeroClause: aDataBlankWhenZeroClause [
	^ self visitProgram: aDataBlankWhenZeroClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataCommonOwnLocalClause: aDataCommonOwnLocalClause [
	^ self visitProgram: aDataCommonOwnLocalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataDescription66Entry: aDataDescription66Entry [
	^ self visitProgram: aDataDescription66Entry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataDescription88Entry: aDataDescription88Entry [
	^ self visitProgram: aDataDescription88Entry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataDescriptionEntry: aDataDescriptionEntry [
	^ self visitProgram: aDataDescriptionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataDivision: aDataDivision [
	^ self visitProgram: aDataDivision
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataExternalClause: aDataExternalClause [
	^ self visitProgram: aDataExternalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataGlobalClause: aDataGlobalClause [
	^ self visitProgram: aDataGlobalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataIntegerStringClause: aDataIntegerStringClause [
	^ self visitProgram: aDataIntegerStringClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataJustifiedClause: aDataJustifiedClause [
	^ self visitProgram: aDataJustifiedClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataOccursClause: aDataOccursClause [
	^ self visitProgram: aDataOccursClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataPictureClause: aDataPictureClause [
	^ self visitProgram: aDataPictureClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataReceivedByClause: aDataReceivedByClause [
	^ self visitProgram: aDataReceivedByClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataRecordAreaClause: aDataRecordAreaClause [
	^ self visitProgram: aDataRecordAreaClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataRecordsClause: aDataRecordsClause [
	^ self visitProgram: aDataRecordsClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataRedefinesClause: aDataRedefinesClause [
	^ self visitProgram: aDataRedefinesClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataRenamesClause: aDataRenamesClause [
	^ self visitProgram: aDataRenamesClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataSignClause: aDataSignClause [
	^ self visitProgram: aDataSignClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataSynchronizedClause: aDataSynchronizedClause [
	^ self visitProgram: aDataSynchronizedClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataThreadLocalClause: aDataThreadLocalClause [
	^ self visitProgram: aDataThreadLocalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataTypeClause: aDataTypeClause [
	^ self visitProgram: aDataTypeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataTypeDefClause: aDataTypeDefClause [
	^ self visitProgram: aDataTypeDefClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataUsageClause: aDataUsageClause [
	^ self visitProgram: aDataUsageClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataUsingClause: aDataUsingClause [
	^ self visitProgram: aDataUsingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataValueClause: aDataValueClause [
	^ self visitProgram: aDataValueClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDataWithLowerBoundsClause: aDataWithLowerBoundsClause [
	^ self visitProgram: aDataWithLowerBoundsClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDateCompiledParagraph: aDateCompiledParagraph [
	^ self visitProgram: aDateCompiledParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDateWrittenParagraph: aDateWrittenParagraph [
	^ self visitProgram: aDateWrittenParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDecimalPointClause: aDecimalPointClause [
	^ self visitProgram: aDecimalPointClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDefaultComputationalSignClause: aDefaultComputationalSignClause [
	^ self visitProgram: aDefaultComputationalSignClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDefaultDisplaySignClause: aDefaultDisplaySignClause [
	^ self visitProgram: aDefaultDisplaySignClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDeleteStatement: aDeleteStatement [
	^ self visitStatement: aDeleteStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDestinationCountClause: aDestinationCountClause [
	^ self visitProgram: aDestinationCountClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDestinationTableClause: aDestinationTableClause [
	^ self visitProgram: aDestinationTableClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDisableStatement: aDisableStatement [
	^ self visitStatement: aDisableStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDiskSizeClause: aDiskSizeClause [
	^ self visitProgram: aDiskSizeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDisplayStatement: aDisplayStatement [
	^ self visitStatement: aDisplayStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitDivideStatement: aDivideStatement [
	^ self visitStatement: aDivideStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEnableStatement: anEnableStatement [
	^ self visitStatement: anEnableStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEndKeyClause: anEndKeyClause [
	^ self visitProgram: anEndKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEndProgramStatement: anEndProgramStatement [
	^ self visitProgram: anEndProgramStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEntryStatement: anEntryStatement [
	^ self visitStatement: anEntryStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEnvironmentDivision: anEnvironmentDivision [
	^ self visitProgram: anEnvironmentDivision
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEnvironmentSwitchNameClause: anEnvironmentSwitchNameClause [
	^ self visitProgram: anEnvironmentSwitchNameClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitErrorKeyClause: anErrorKeyClause [
	^ self visitProgram: anErrorKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEvaluateStatement: anEvaluateStatement [
	^ self visitStatement: anEvaluateStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEvaluateWhen: anEvaluateWhen [
	^ self visitProgram: anEvaluateWhen
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEvaluateWhenOther: anEvaluateWhenOther [
	^ self visitProgram: anEvaluateWhenOther
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitEvaluateWhenPhrase: anEvaluateWhenPhrase [
	^ self visitProgram: anEvaluateWhenPhrase
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitExecCicsStatement: anExecCicsStatement [
	^ self visitStatement: anExecCicsStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitExecSqlImsStatement: anExecSqlImsStatement [
	^ self visitStatement: anExecSqlImsStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitExecSqlStatement: anExecSqlStatement [
	^ self visitStatement: anExecSqlStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitExhibitStatement: anExhibitStatement [
	^ self visitStatement: anExhibitStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitExitStatement: anExitStatement [
	^ self visitStatement: anExitStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitExternalClause: anExternalClause [
	^ self visitProgram: anExternalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFigurativeConstant: aFigurativeConstant [
	^ self visitExpression: aFigurativeConstant
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFileControlEntry: aFileControlEntry [
	^ self visitProgram: aFileControlEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFileControlParagraph: aFileControlParagraph [
	^ self visitProgram: aFileControlParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFileDescriptionEntry: aFileDescriptionEntry [
	^ self visitProgram: aFileDescriptionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFileSection: aFileSection [
	^ self visitProgram: aFileSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFileStatusClause: aFileStatusClause [
	^ self visitProgram: aFileStatusClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitFunctionCall: aFunctionCall [
	^ self visitExpression: aFunctionCall
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitGenerateStatement: aGenerateStatement [
	^ self visitStatement: aGenerateStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitGlobalClause: aGlobalClause [
	^ self visitProgram: aGlobalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitGoToStatement: aGoToStatement [
	^ self visitStatement: aGoToStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitGobackStatement: aGobackStatement [
	^ self visitStatement: aGobackStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitHandler: aHandler [
	^ self visitProgram: aHandler
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitIdentificationDivision: anIdentificationDivision [
	^ self visitProgram: anIdentificationDivision
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitIdentifier: anIdentifier [
	^ self visitExpression: anIdentifier
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitIfElse: anIfElse [
	^ self visitProgram: anIfElse
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitIfThen: anIfThen [
	^ self visitProgram: anIfThen
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitInExpression: anInExpression [
	^ self visitExpression: anInExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitIndexedExpression: anIndexedExpression [
	^ self visitProgram: anIndexedExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitInitializeStatement: anInitializeStatement [
	^ self visitStatement: anInitializeStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitInitiateStatement: anInitiateStatement [
	^ self visitStatement: anInitiateStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitInputOutputSection: anInputOutputSection [
	^ self visitProgram: anInputOutputSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitInspectStatement: anInspectStatement [
	^ self visitStatement: anInspectStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitInstallationParagraph: anInstallationParagraph [
	^ self visitProgram: anInstallationParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitIoControlParagraph: anIoControlParagraph [
	^ self visitProgram: anIoControlParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLabelRecordsClause: aLabelRecordsClause [
	^ self visitProgram: aLabelRecordsClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryAttributeClause: aLibraryAttributeClause [
	^ self visitProgram: aLibraryAttributeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryDescriptionEntry: aLibraryDescriptionEntry [
	^ self visitProgram: aLibraryDescriptionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryEntryProcedureClause: aLibraryEntryProcedureClause [
	^ self visitProgram: aLibraryEntryProcedureClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryEntryProcedureForClause: aLibraryEntryProcedureForClause [
	^ self visitProgram: aLibraryEntryProcedureForClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryEntryProcedureGivingClause: aLibraryEntryProcedureGivingClause [
	^ self visitProgram: aLibraryEntryProcedureGivingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryEntryProcedureUsingClause: aLibraryEntryProcedureUsingClause [
	^ self visitProgram: aLibraryEntryProcedureUsingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryEntryProcedureWithClause: aLibraryEntryProcedureWithClause [
	^ self visitProgram: aLibraryEntryProcedureWithClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryIsCommonClause: aLibraryIsCommonClause [
	^ self visitProgram: aLibraryIsCommonClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLibraryIsGlobalClause: aLibraryIsGlobalClause [
	^ self visitProgram: aLibraryIsGlobalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLinageClause: aLinageClause [
	^ self visitProgram: aLinageClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLinkageSection: aLinkageSection [
	^ self visitProgram: aLinkageSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitLocalStorageSection: aLocalStorageSection [
	^ self visitProgram: aLocalStorageSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMemorySizeClause: aMemorySizeClause [
	^ self visitProgram: aMemorySizeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMergeOnKeyClause: aMergeOnKeyClause [
	^ self visitProgram: aMergeOnKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMergeStatement: aMergeStatement [
	^ self visitStatement: aMergeStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMessageCountClause: aMessageCountClause [
	^ self visitProgram: aMessageCountClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMessageDateClause: aMessageDateClause [
	^ self visitProgram: aMessageDateClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMessageTimeClause: aMessageTimeClause [
	^ self visitProgram: aMessageTimeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMoveStatement: aMoveStatement [
	^ self visitStatement: aMoveStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMultipleFileClause: aMultipleFileClause [
	^ self visitProgram: aMultipleFileClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitMultiplyStatement: aMultiplyStatement [
	^ self visitStatement: aMultiplyStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitObjectComputerParagraph: anObjectComputerParagraph [
	^ self visitProgram: anObjectComputerParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitOdtClause: anOdtClause [
	^ self visitProgram: anOdtClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitOpenStatement: anOpenStatement [
	^ self visitStatement: anOpenStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitOrganizationClause: anOrganizationClause [
	^ self visitProgram: anOrganizationClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitPaddingCharacterClause: aPaddingCharacterClause [
	^ self visitProgram: aPaddingCharacterClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitParagraph: aParagraph [
	^ self visitProgram: aParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitPasswordClause: aPasswordClause [
	^ self visitProgram: aPasswordClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitPerformStatement: aPerformStatement [
	^ self visitStatement: aPerformStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitPerformVaryingClause: aPerformVaryingClause [
	^ self visitProgram: aPerformVaryingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProcedureDeclaratives: aProcedureDeclaratives [
	^ self visitProgram: aProcedureDeclaratives
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProcedureDivision: aProcedureDivision [
	^ self visitProgram: aProcedureDivision
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProcedureDivisionGivingClause: aProcedureDivisionGivingClause [
	^ self visitProgram: aProcedureDivisionGivingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProcedureDivisionUsingClause: aProcedureDivisionUsingClause [
	^ self visitProgram: aProcedureDivisionUsingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProcedureName: aProcedureName [
	^ self visitProgram: aProcedureName
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProcedureSection: aProcedureSection [
	^ self visitProgram: aProcedureSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProcedureSectionHeader: aProcedureSectionHeader [
	^ self visitProgram: aProcedureSectionHeader
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProgramIdParagraph: aProgramIdParagraph [
	^ self visitProgram: aProgramIdParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProgramLibrarySection: aProgramLibrarySection [
	^ self visitProgram: aProgramLibrarySection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitProgramUnit: aProgramUnit [
	^ self visitProgram: aProgramUnit
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitPurgeStatement: aPurgeStatement [
	^ self visitStatement: aPurgeStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRangeCondition: aRangeCondition [
	^ self visitProgram: aRangeCondition
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReadStatement: aReadStatement [
	^ self visitStatement: aReadStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveBefore: aReceiveBefore [
	^ self visitProgram: aReceiveBefore
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveFromStatement: aReceiveFromStatement [
	^ self visitProgram: aReceiveFromStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveIntoStatement: aReceiveIntoStatement [
	^ self visitProgram: aReceiveIntoStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveSize: aReceiveSize [
	^ self visitProgram: aReceiveSize
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveStatement: aReceiveStatement [
	^ self visitStatement: aReceiveStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveStatus: aReceiveStatus [
	^ self visitProgram: aReceiveStatus
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveThread: aReceiveThread [
	^ self visitProgram: aReceiveThread
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReceiveWith: aReceiveWith [
	^ self visitProgram: aReceiveWith
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRecordContainsClause: aRecordContainsClause [
	^ self visitProgram: aRecordContainsClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRecordDelimiterClause: aRecordDelimiterClause [
	^ self visitProgram: aRecordDelimiterClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRecordKeyClause: aRecordKeyClause [
	^ self visitProgram: aRecordKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRecordingModeClause: aRecordingModeClause [
	^ self visitProgram: aRecordingModeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRelativeKeyClause: aRelativeKeyClause [
	^ self visitProgram: aRelativeKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReleaseStatement: aReleaseStatement [
	^ self visitStatement: aReleaseStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRemarksParagraph: aRemarksParagraph [
	^ self visitProgram: aRemarksParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportClause: aReportClause [
	^ self visitProgram: aReportClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportDescriptionEntry: aReportDescriptionEntry [
	^ self visitProgram: aReportDescriptionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportDescriptionFirstDetailClause: aReportDescriptionFirstDetailClause [
	^ self visitProgram: aReportDescriptionFirstDetailClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportDescriptionFootingClause: aReportDescriptionFootingClause [
	^ self visitProgram: aReportDescriptionFootingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportDescriptionGlobalClause: aReportDescriptionGlobalClause [
	^ self visitProgram: aReportDescriptionGlobalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportDescriptionHeadingClause: aReportDescriptionHeadingClause [
	^ self visitProgram: aReportDescriptionHeadingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportDescriptionLastDetailClause: aReportDescriptionLastDetailClause [
	^ self visitProgram: aReportDescriptionLastDetailClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportDescriptionPageLimitClause: aReportDescriptionPageLimitClause [
	^ self visitProgram: aReportDescriptionPageLimitClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupBlankWhenZeroClause: aReportGroupBlankWhenZeroClause [
	^ self visitProgram: aReportGroupBlankWhenZeroClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupColumnNumberClause: aReportGroupColumnNumberClause [
	^ self visitProgram: aReportGroupColumnNumberClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupDescriptionEntry: aReportGroupDescriptionEntry [
	^ self visitProgram: aReportGroupDescriptionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupIndicateClause: aReportGroupIndicateClause [
	^ self visitProgram: aReportGroupIndicateClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupJustifiedClause: aReportGroupJustifiedClause [
	^ self visitProgram: aReportGroupJustifiedClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupLineNumberClause: aReportGroupLineNumberClause [
	^ self visitProgram: aReportGroupLineNumberClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupNextGroupClause: aReportGroupNextGroupClause [
	^ self visitProgram: aReportGroupNextGroupClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupPictureClause: aReportGroupPictureClause [
	^ self visitProgram: aReportGroupPictureClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupResetClause: aReportGroupResetClause [
	^ self visitProgram: aReportGroupResetClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupSignClause: aReportGroupSignClause [
	^ self visitProgram: aReportGroupSignClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupSourceClause: aReportGroupSourceClause [
	^ self visitProgram: aReportGroupSourceClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupSumClause: aReportGroupSumClause [
	^ self visitProgram: aReportGroupSumClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypeClause: aReportGroupTypeClause [
	^ self visitProgram: aReportGroupTypeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypeControlFooting: aReportGroupTypeControlFooting [
	^ self visitProgram: aReportGroupTypeControlFooting
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypeControlHeading: aReportGroupTypeControlHeading [
	^ self visitProgram: aReportGroupTypeControlHeading
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypeDetail: aReportGroupTypeDetail [
	^ self visitProgram: aReportGroupTypeDetail
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypePageFooting: aReportGroupTypePageFooting [
	^ self visitProgram: aReportGroupTypePageFooting
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypePageHeading: aReportGroupTypePageHeading [
	^ self visitProgram: aReportGroupTypePageHeading
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypeReportFooting: aReportGroupTypeReportFooting [
	^ self visitProgram: aReportGroupTypeReportFooting
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupTypeReportHeading: aReportGroupTypeReportHeading [
	^ self visitProgram: aReportGroupTypeReportHeading
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupUsageClause: aReportGroupUsageClause [
	^ self visitProgram: aReportGroupUsageClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportGroupValueClause: aReportGroupValueClause [
	^ self visitProgram: aReportGroupValueClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReportSection: aReportSection [
	^ self visitProgram: aReportSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRerunClause: aRerunClause [
	^ self visitProgram: aRerunClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReserveClause: aReserveClause [
	^ self visitProgram: aReserveClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReserveNetworkClause: aReserveNetworkClause [
	^ self visitProgram: aReserveNetworkClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitRewriteStatement: aRewriteStatement [
	^ self visitStatement: aRewriteStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSameClause: aSameClause [
	^ self visitProgram: aSameClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionAutoClause: aScreenDescriptionAutoClause [
	^ self visitProgram: aScreenDescriptionAutoClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionBackgroundColorClause: aScreenDescriptionBackgroundColorClause [
	^ self visitProgram: aScreenDescriptionBackgroundColorClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionBellClause: aScreenDescriptionBellClause [
	^ self visitProgram: aScreenDescriptionBellClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionBlankClause: aScreenDescriptionBlankClause [
	^ self visitProgram: aScreenDescriptionBlankClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionBlankWhenZeroClause: aScreenDescriptionBlankWhenZeroClause [
	^ self visitProgram: aScreenDescriptionBlankWhenZeroClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionBlinkClause: aScreenDescriptionBlinkClause [
	^ self visitProgram: aScreenDescriptionBlinkClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionColumnClause: aScreenDescriptionColumnClause [
	^ self visitProgram: aScreenDescriptionColumnClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionControlClause: aScreenDescriptionControlClause [
	^ self visitProgram: aScreenDescriptionControlClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionEntry: aScreenDescriptionEntry [
	^ self visitProgram: aScreenDescriptionEntry
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionEraseClause: aScreenDescriptionEraseClause [
	^ self visitProgram: aScreenDescriptionEraseClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionForegroundColorClause: aScreenDescriptionForegroundColorClause [
	^ self visitProgram: aScreenDescriptionForegroundColorClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionFromClause: aScreenDescriptionFromClause [
	^ self visitProgram: aScreenDescriptionFromClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionFullClause: aScreenDescriptionFullClause [
	^ self visitProgram: aScreenDescriptionFullClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionGridClause: aScreenDescriptionGridClause [
	^ self visitProgram: aScreenDescriptionGridClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionJustifiedClause: aScreenDescriptionJustifiedClause [
	^ self visitProgram: aScreenDescriptionJustifiedClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionLightClause: aScreenDescriptionLightClause [
	^ self visitProgram: aScreenDescriptionLightClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionLineClause: aScreenDescriptionLineClause [
	^ self visitProgram: aScreenDescriptionLineClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionPictureClause: aScreenDescriptionPictureClause [
	^ self visitProgram: aScreenDescriptionPictureClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionPromptClause: aScreenDescriptionPromptClause [
	^ self visitProgram: aScreenDescriptionPromptClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionRequiredClause: aScreenDescriptionRequiredClause [
	^ self visitProgram: aScreenDescriptionRequiredClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionReverseVideoClause: aScreenDescriptionReverseVideoClause [
	^ self visitProgram: aScreenDescriptionReverseVideoClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionSecureClause: aScreenDescriptionSecureClause [
	^ self visitProgram: aScreenDescriptionSecureClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionSignClause: aScreenDescriptionSignClause [
	^ self visitProgram: aScreenDescriptionSignClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionSizeClause: aScreenDescriptionSizeClause [
	^ self visitProgram: aScreenDescriptionSizeClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionUnderlineClause: aScreenDescriptionUnderlineClause [
	^ self visitProgram: aScreenDescriptionUnderlineClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionUsageClause: aScreenDescriptionUsageClause [
	^ self visitProgram: aScreenDescriptionUsageClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionUsingClause: aScreenDescriptionUsingClause [
	^ self visitProgram: aScreenDescriptionUsingClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionValueClause: aScreenDescriptionValueClause [
	^ self visitProgram: aScreenDescriptionValueClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenDescriptionZeroFillClause: aScreenDescriptionZeroFillClause [
	^ self visitProgram: aScreenDescriptionZeroFillClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitScreenSection: aScreenSection [
	^ self visitProgram: aScreenSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSearchStatement: aSearchStatement [
	^ self visitStatement: aSearchStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSecurityParagraph: aSecurityParagraph [
	^ self visitProgram: aSecurityParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSegmentLimitClause: aSegmentLimitClause [
	^ self visitProgram: aSegmentLimitClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSelectClause: aSelectClause [
	^ self visitProgram: aSelectClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSendStatement: aSendStatement [
	^ self visitStatement: aSendStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSendStatementAsync: aSendStatementAsync [
	^ self visitProgram: aSendStatementAsync
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSendStatementSync: aSendStatementSync [
	^ self visitProgram: aSendStatementSync
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSentence: aSentence [
	^ self visitProgram: aSentence
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSetStatement: aSetStatement [
	^ self visitStatement: aSetStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSetToValue: aSetToValue [
	^ self visitProgram: aSetToValue
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSignConditionExpression: aSignConditionExpression [
	^ self visitExpression: aSignConditionExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSortOnKeyClause: aSortOnKeyClause [
	^ self visitProgram: aSortOnKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSortStatement: aSortStatement [
	^ self visitStatement: aSortStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSourceComputerParagraph: aSourceComputerParagraph [
	^ self visitProgram: aSourceComputerParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSpecialNamesParagraph: aSpecialNamesParagraph [
	^ self visitProgram: aSpecialNamesParagraph
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSpecialRegister: aSpecialRegister [
	^ self visitExpression: aSpecialRegister
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitStartStatement: aStartStatement [
	^ self visitStatement: aStartStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitStatusKeyClause: aStatusKeyClause [
	^ self visitProgram: aStatusKeyClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitStopStatement: aStopStatement [
	^ self visitStatement: aStopStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitStringStatement: aStringStatement [
	^ self visitStatement: aStringStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSubscriptReferenceExpression: aSubscriptReferenceExpression [
	^ self visitExpression: aSubscriptReferenceExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSubscripts: aSubscripts [
	^ self visitProgram: aSubscripts
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSubtractStatement: aSubtractStatement [
	^ self visitStatement: aSubtractStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSymbolicCharactersClause: aSymbolicCharactersClause [
	^ self visitProgram: aSymbolicCharactersClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSymbolicDestinationClause: aSymbolicDestinationClause [
	^ self visitProgram: aSymbolicDestinationClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSymbolicQueueClause: aSymbolicQueueClause [
	^ self visitProgram: aSymbolicQueueClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSymbolicSourceClause: aSymbolicSourceClause [
	^ self visitProgram: aSymbolicSourceClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSymbolicSubQueueClause: aSymbolicSubQueueClause [
	^ self visitProgram: aSymbolicSubQueueClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitSymbolicTerminalClause: aSymbolicTerminalClause [
	^ self visitProgram: aSymbolicTerminalClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitTableCall: aTableCall [
	^ self visitExpression: aTableCall
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitTerminateStatement: aTerminateStatement [
	^ self visitStatement: aTerminateStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitTextLengthClause: aTextLengthClause [
	^ self visitProgram: aTextLengthClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitUnstringStatement: anUnstringStatement [
	^ self visitStatement: anUnstringStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitUseAfterClause: anUseAfterClause [
	^ self visitProgram: anUseAfterClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitUseDebugClause: anUseDebugClause [
	^ self visitProgram: anUseDebugClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitUseStatement: anUseStatement [
	^ self visitProgram: anUseStatement
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitValueOfClause: aValueOfClause [
	^ self visitProgram: aValueOfClause
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitWorkingStorageSection: aWorkingStorageSection [
	^ self visitProgram: aWorkingStorageSection
]

{ #category : 'generated' }
TCobolProgramNodeVisitor >> visitWriteStatement: aWriteStatement [
	^ self visitStatement: aWriteStatement
]
