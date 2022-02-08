{
	"contents": {
		"e6c6d5d2-db0b-4b89-9e61-22a25c29aa9e": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfdemohr",
			"subject": "WFdemohr",
			"name": "WFdemohr",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approvazione richiesta"
				},
				"fb9432f0-2009-434d-b39b-0186d4e76beb": {
					"name": "EndEvent2"
				},
				"3e1b97ed-821e-43be-a2c3-f9bef8de567b": {
					"name": "EndEvent5"
				}
			},
			"activities": {
				"d35b5905-1b4b-43e3-bc7e-eb4e9c04b9cf": {
					"name": "Task approvazione"
				},
				"c2f9c319-87e1-44d4-b79e-28f0dd3185a6": {
					"name": "risultato approvazione"
				},
				"820c4a9c-2656-4d23-891b-2536177bcbb8": {
					"name": "MailTask1"
				},
				"11ae9c9d-5df7-4f72-9294-c0f283a85f08": {
					"name": "ParallelGateway1"
				},
				"af45dca7-d27c-443b-932d-bbd8cd2a7c56": {
					"name": "preparapost"
				},
				"8e444f0f-f1ea-41d4-b20c-790131a38dfe": {
					"name": "ServiceTask3"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"d4f5c0f0-4e69-43c9-9812-530e4c469ad6": {
					"name": "SequenceFlow7"
				},
				"7176cb06-94f8-4651-93cf-2a6f8f96d03e": {
					"name": "SequenceFlow8"
				},
				"ace6d3be-c5c2-4b2f-88f2-531df210d1eb": {
					"name": "SequenceFlow14"
				},
				"296d1f94-a461-4776-8bb1-9c174b5aaa64": {
					"name": "SequenceFlow15"
				},
				"63ce2c1b-1c2d-47cc-a277-1c70c86cc825": {
					"name": "SequenceFlow16"
				},
				"7164fbc1-2677-4c69-a386-36dc3f8b2277": {
					"name": "SequenceFlow17"
				},
				"b060c99c-5d76-4ba8-9b3e-0c6b5a24d999": {
					"name": "SequenceFlow18"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approvazione richiesta",
			"sampleContextRefs": {
				"4a3e8c09-1b5a-4364-b3ff-b293b7e41367": {}
			}
		},
		"fb9432f0-2009-434d-b39b-0186d4e76beb": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"documentation": "Ho finito ",
			"eventDefinitions": {
				"3bc70dc7-7bb4-4f17-a36a-e0dfb44eb13c": {}
			}
		},
		"3e1b97ed-821e-43be-a2c3-f9bef8de567b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent5",
			"name": "EndEvent5"
		},
		"d35b5905-1b4b-43e3-bc7e-eb4e9c04b9cf": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Richiesta approvazione \"${context.TITOLO}\"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.APPROVATORE}",
			"formReference": "/forms/WFdemohr/Formhr.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "formhr"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Task approvazione",
			"documentation": "creo task di approvazione visibile su myInbox al corrispettivo approvatore"
		},
		"c2f9c319-87e1-44d4-b79e-28f0dd3185a6": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFdemohr/risultatoapprovazione.js",
			"id": "scripttask3",
			"name": "risultato approvazione",
			"documentation": "Recupero risultato approvazione"
		},
		"820c4a9c-2656-4d23-891b-2536177bcbb8": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "525d9683-64ce-4112-8e97-0d112e648eff"
		},
		"11ae9c9d-5df7-4f72-9294-c0f283a85f08": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "ParallelGateway1"
		},
		"af45dca7-d27c-443b-932d-bbd8cd2a7c56": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WFdemohr/preparapost.js",
			"id": "scripttask4",
			"name": "preparapost"
		},
		"8e444f0f-f1ea-41d4-b20c-790131a38dfe": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "dest_wf",
			"path": "/richieste",
			"httpMethod": "POST",
			"requestVariable": "${context.req}",
			"responseVariable": "${context.res}",
			"id": "servicetask3",
			"name": "ServiceTask3"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "11ae9c9d-5df7-4f72-9294-c0f283a85f08"
		},
		"d4f5c0f0-4e69-43c9-9812-530e4c469ad6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "d35b5905-1b4b-43e3-bc7e-eb4e9c04b9cf",
			"targetRef": "c2f9c319-87e1-44d4-b79e-28f0dd3185a6"
		},
		"7176cb06-94f8-4651-93cf-2a6f8f96d03e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "c2f9c319-87e1-44d4-b79e-28f0dd3185a6",
			"targetRef": "af45dca7-d27c-443b-932d-bbd8cd2a7c56"
		},
		"ace6d3be-c5c2-4b2f-88f2-531df210d1eb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "11ae9c9d-5df7-4f72-9294-c0f283a85f08",
			"targetRef": "820c4a9c-2656-4d23-891b-2536177bcbb8"
		},
		"296d1f94-a461-4776-8bb1-9c174b5aaa64": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "820c4a9c-2656-4d23-891b-2536177bcbb8",
			"targetRef": "3e1b97ed-821e-43be-a2c3-f9bef8de567b"
		},
		"63ce2c1b-1c2d-47cc-a277-1c70c86cc825": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "11ae9c9d-5df7-4f72-9294-c0f283a85f08",
			"targetRef": "d35b5905-1b4b-43e3-bc7e-eb4e9c04b9cf"
		},
		"7164fbc1-2677-4c69-a386-36dc3f8b2277": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "af45dca7-d27c-443b-932d-bbd8cd2a7c56",
			"targetRef": "8e444f0f-f1ea-41d4-b20c-790131a38dfe"
		},
		"b060c99c-5d76-4ba8-9b3e-0c6b5a24d999": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "8e444f0f-f1ea-41d4-b20c-790131a38dfe",
			"targetRef": "fb9432f0-2009-434d-b39b-0186d4e76beb"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"57daf490-f7aa-4f87-8c62-b11e0cfb1e16": {},
				"65d253e4-adcb-4fb2-9733-468d7c7baffe": {},
				"d1b86cc0-ca08-4e01-8b3f-5685d8548b83": {},
				"07117a01-5722-459b-bf31-d2dddc1cdd6b": {},
				"04c3e977-e8fa-4621-8531-de8f88d11314": {},
				"ea72377c-f5dd-4b0e-aa88-61dfa61509e9": {},
				"8e62e0cd-88a0-40a5-96c8-05cb0497dbcd": {},
				"be452939-68de-4fb7-b7ad-baeaae15b0a0": {},
				"de47dccf-f2ef-43db-90ba-441201efbba9": {},
				"58c09b75-2149-4770-881c-e1d8481f11da": {},
				"21df9f1b-93c5-4b4d-a1c5-f8b4b0882871": {},
				"2ba9e877-2035-48a6-aa65-ed277b34ac70": {},
				"48a62d9d-52fe-4563-a467-89a7eb3ab726": {},
				"08974cb6-39dd-48bd-8de7-6471357d808f": {},
				"da9fb432-ee84-4e0d-a11f-b4288f747547": {}
			}
		},
		"4a3e8c09-1b5a-4364-b3ff-b293b7e41367": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/WFdemohr/FilePayloadInserimento.json",
			"id": "default-start-context"
		},
		"3bc70dc7-7bb4-4f17-a36a-e0dfb44eb13c": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "8e62e0cd-88a0-40a5-96c8-05cb0497dbcd",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"57daf490-f7aa-4f87-8c62-b11e0cfb1e16": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 205.9999988079071,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "d35b5905-1b4b-43e3-bc7e-eb4e9c04b9cf"
		},
		"65d253e4-adcb-4fb2-9733-468d7c7baffe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "305.9999988079071,152 340.99999821186066,152 340.99999821186066,139.5 375.9999976158142,139.5",
			"sourceSymbol": "57daf490-f7aa-4f87-8c62-b11e0cfb1e16",
			"targetSymbol": "d1b86cc0-ca08-4e01-8b3f-5685d8548b83",
			"object": "d4f5c0f0-4e69-43c9-9812-530e4c469ad6"
		},
		"d1b86cc0-ca08-4e01-8b3f-5685d8548b83": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 375.9999976158142,
			"y": 109.5,
			"width": 100,
			"height": 60,
			"object": "c2f9c319-87e1-44d4-b79e-28f0dd3185a6"
		},
		"07117a01-5722-459b-bf31-d2dddc1cdd6b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "475.9999976158142,139.5 510.99999701976776,139.5 510.99999701976776,97 545.9999964237213,97",
			"sourceSymbol": "d1b86cc0-ca08-4e01-8b3f-5685d8548b83",
			"targetSymbol": "2ba9e877-2035-48a6-aa65-ed277b34ac70",
			"object": "7176cb06-94f8-4651-93cf-2a6f8f96d03e"
		},
		"04c3e977-e8fa-4621-8531-de8f88d11314": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 845.9999964237213,
			"y": 79.5,
			"width": 35,
			"height": 35,
			"object": "fb9432f0-2009-434d-b39b-0186d4e76beb"
		},
		"ea72377c-f5dd-4b0e-aa88-61dfa61509e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 205.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "820c4a9c-2656-4d23-891b-2536177bcbb8"
		},
		"8e62e0cd-88a0-40a5-96c8-05cb0497dbcd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 94,
			"y": 76,
			"object": "11ae9c9d-5df7-4f72-9294-c0f283a85f08"
		},
		"be452939-68de-4fb7-b7ad-baeaae15b0a0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "136,97 170.99999940395355,97 170.99999940395355,42 205.9999988079071,42",
			"sourceSymbol": "8e62e0cd-88a0-40a5-96c8-05cb0497dbcd",
			"targetSymbol": "ea72377c-f5dd-4b0e-aa88-61dfa61509e9",
			"object": "ace6d3be-c5c2-4b2f-88f2-531df210d1eb"
		},
		"de47dccf-f2ef-43db-90ba-441201efbba9": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 375.9999976158142,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "3e1b97ed-821e-43be-a2c3-f9bef8de567b"
		},
		"58c09b75-2149-4770-881c-e1d8481f11da": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "305.9999988079071,42 375.9999976158142,42",
			"sourceSymbol": "ea72377c-f5dd-4b0e-aa88-61dfa61509e9",
			"targetSymbol": "de47dccf-f2ef-43db-90ba-441201efbba9",
			"object": "296d1f94-a461-4776-8bb1-9c174b5aaa64"
		},
		"21df9f1b-93c5-4b4d-a1c5-f8b4b0882871": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "136,97 170.99999940395355,97 170.99999940395355,152 205.9999988079071,152",
			"sourceSymbol": "8e62e0cd-88a0-40a5-96c8-05cb0497dbcd",
			"targetSymbol": "57daf490-f7aa-4f87-8c62-b11e0cfb1e16",
			"object": "63ce2c1b-1c2d-47cc-a277-1c70c86cc825"
		},
		"2ba9e877-2035-48a6-aa65-ed277b34ac70": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 545.9999964237213,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "af45dca7-d27c-443b-932d-bbd8cd2a7c56"
		},
		"48a62d9d-52fe-4563-a467-89a7eb3ab726": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "645.9999964237213,97 695.9999964237213,97",
			"sourceSymbol": "2ba9e877-2035-48a6-aa65-ed277b34ac70",
			"targetSymbol": "08974cb6-39dd-48bd-8de7-6471357d808f",
			"object": "7164fbc1-2677-4c69-a386-36dc3f8b2277"
		},
		"08974cb6-39dd-48bd-8de7-6471357d808f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 695.9999964237213,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "8e444f0f-f1ea-41d4-b20c-790131a38dfe"
		},
		"da9fb432-ee84-4e0d-a11f-b4288f747547": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "795.9999964237213,97 845.9999964237213,97",
			"sourceSymbol": "08974cb6-39dd-48bd-8de7-6471357d808f",
			"targetSymbol": "04c3e977-e8fa-4621-8531-de8f88d11314",
			"object": "b060c99c-5d76-4ba8-9b3e-0c6b5a24d999"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 18,
			"startevent": 1,
			"endevent": 5,
			"usertask": 1,
			"servicetask": 3,
			"scripttask": 4,
			"mailtask": 1,
			"exclusivegateway": 2,
			"parallelgateway": 1
		},
		"525d9683-64ce-4112-8e97-0d112e648eff": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "corrado.scarfone@eng.it",
			"cc": "",
			"subject": "Mail prva Demo HR",
			"text": "Mail Automatica WF test",
			"id": "maildefinition1"
		}
	}
}