// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class ValidFailInEnum extends KaitaiStruct {
    public static ValidFailInEnum fromFile(String fileName) throws IOException {
        return new ValidFailInEnum(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        DOG(4),
        CHICKEN(12);

        private final long id;
        Animal(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(2);
        static {
            for (Animal e : Animal.values())
                byId.put(e.id(), e);
        }
        public static Animal byId(long id) { return byId.get(id); }
    }

    public ValidFailInEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailInEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailInEnum(KaitaiStream _io, KaitaiStruct _parent, ValidFailInEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = Animal.byId(this._io.readU4le());
        if (this.foo == null) {
            throw new KaitaiStream.ValidationNotInEnumError(this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    private Animal foo;
    private ValidFailInEnum _root;
    private KaitaiStruct _parent;
    public Animal foo() { return foo; }
    public ValidFailInEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
