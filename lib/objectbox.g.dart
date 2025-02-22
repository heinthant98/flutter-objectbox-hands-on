// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'model/ShoppingMemo.dart';
import 'model/ToDo.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6675070774239226741),
      name: 'ShoppingMemo',
      lastPropertyId: const IdUid(3, 7750487792289187867),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 29387081962012285),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 9036978555191466439),
            name: 'memo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7750487792289187867),
            name: 'check',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 3095272169647020119),
      name: 'ToDo',
      lastPropertyId: const IdUid(3, 4269557832574259765),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 428592798965882508),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8809528482573730974),
            name: 'todo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4269557832574259765),
            name: 'check',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(2, 3095272169647020119),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    ShoppingMemo: EntityDefinition<ShoppingMemo>(
        model: _entities[0],
        toOneRelations: (ShoppingMemo object) => [],
        toManyRelations: (ShoppingMemo object) => {},
        getId: (ShoppingMemo object) => object.id,
        setId: (ShoppingMemo object, int id) {
          object.id = id;
        },
        objectToFB: (ShoppingMemo object, fb.Builder fbb) {
          final memoOffset = fbb.writeString(object.memo);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, memoOffset);
          fbb.addBool(2, object.check);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ShoppingMemo(
              memo: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              check:
                  const fb.BoolReader().vTableGet(buffer, rootOffset, 8, false))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    ToDo: EntityDefinition<ToDo>(
        model: _entities[1],
        toOneRelations: (ToDo object) => [],
        toManyRelations: (ToDo object) => {},
        getId: (ToDo object) => object.id,
        setId: (ToDo object, int id) {
          object.id = id;
        },
        objectToFB: (ToDo object, fb.Builder fbb) {
          final todoOffset = fbb.writeString(object.todo);
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, todoOffset);
          fbb.addBool(2, object.check);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ToDo(
              todo: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              check:
                  const fb.BoolReader().vTableGet(buffer, rootOffset, 8, false))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [ShoppingMemo] entity fields to define ObjectBox queries.
class ShoppingMemo_ {
  /// see [ShoppingMemo.id]
  static final id =
      QueryIntegerProperty<ShoppingMemo>(_entities[0].properties[0]);

  /// see [ShoppingMemo.memo]
  static final memo =
      QueryStringProperty<ShoppingMemo>(_entities[0].properties[1]);

  /// see [ShoppingMemo.check]
  static final check =
      QueryBooleanProperty<ShoppingMemo>(_entities[0].properties[2]);
}

/// [ToDo] entity fields to define ObjectBox queries.
class ToDo_ {
  /// see [ToDo.id]
  static final id = QueryIntegerProperty<ToDo>(_entities[1].properties[0]);

  /// see [ToDo.todo]
  static final todo = QueryStringProperty<ToDo>(_entities[1].properties[1]);

  /// see [ToDo.check]
  static final check = QueryBooleanProperty<ToDo>(_entities[1].properties[2]);
}
