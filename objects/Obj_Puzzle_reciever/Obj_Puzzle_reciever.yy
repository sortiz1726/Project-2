{
    "id": "b6995cc9-3da8-4c8c-bf73-9d740b61795e",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "Obj_Puzzle_reciever",
    "eventList": [
        {
            "id": "2bd0db36-32a2-484d-b3b6-87874a4c668a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "b6995cc9-3da8-4c8c-bf73-9d740b61795e"
        },
        {
            "id": "ecb3603d-6808-4db9-afb4-c92c79d181d6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "b6995cc9-3da8-4c8c-bf73-9d740b61795e"
        },
        {
            "id": "727f3d10-853a-4de6-b34c-8e3a9034af02",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "b6995cc9-3da8-4c8c-bf73-9d740b61795e"
        },
        {
            "id": "778b7f8a-b58f-4dc5-8511-f8fdf6fc907b",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 2,
            "m_owner": "b6995cc9-3da8-4c8c-bf73-9d740b61795e"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "951b2059-769d-40a9-96a3-c989115fe285",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "create_text_box",
            "varType": 3
        },
        {
            "id": "c3dda738-927f-480a-9016-1bf3cd906951",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "obj_waffle",
                "obj_keys",
                "obj_bone",
                "obj_item_example",
                "obj_lemonade",
                "obj_laxatives",
                "obj_clicker",
                "obj_lemonade_with_lax",
                "obj_wallet",
                "obj_glasses",
                "obj_hammer"
            ],
            "multiselect": true,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_waffle, obj_keys, obj_bone",
            "varName": "items_needed",
            "varType": 6
        },
        {
            "id": "ad99a9a8-3803-4bb8-b52e-78d9d01dc3da",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "Man I really need this",
            "varName": "response_I_need",
            "varType": 2
        },
        {
            "id": "1c28cc9a-a196-456e-b442-6f5f360d91b8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "response_include_items",
            "varType": 3
        },
        {
            "id": "e99e36e1-b41f-4fd7-af88-f66fd66b1558",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "That's what I want",
            "varName": "response_accept",
            "varType": 2
        },
        {
            "id": "5471f430-c299-4e76-b66a-079de6aa9764",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "I don't want that item",
            "varName": "response_decline",
            "varType": 2
        },
        {
            "id": "1d783e4e-81ed-4980-93b8-ddb24e3d4264",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "Thanks I have all that I need",
            "varName": "response_neccesities_met",
            "varType": 2
        },
        {
            "id": "d2d19a19-fb44-419a-a498-ad1105db0798",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "",
            "varName": "puzzle_complete_action",
            "varType": 2
        },
        {
            "id": "7d8c134b-4818-4723-b825-884fa2a4708d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": true,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "timer_for_room_transition",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}