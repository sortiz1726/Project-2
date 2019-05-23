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
            "id": "c3dda738-927f-480a-9016-1bf3cd906951",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": [
                "obj_waffle",
                "obj_keys",
                "obj_bone"
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
            "varName": "reponse_decline",
            "varType": 2
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
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}