// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumForUnknownId extends KaitaiStruct {
    public static EnumForUnknownId fromFile(String fileName) throws IOException {
        return new EnumForUnknownId(new KaitaiStream(fileName));
    }

    public enum Animal {
        DOG(4),
        CAT(7),
        CHICKEN(12);

        private final long id;
        Animal(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(3);
        static {
            for (Animal e : Animal.values())
                byId.put(e.id(), e);
        }
        public static Animal byId(long id) { return byId.get(id); }
    }

    public EnumForUnknownId(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public EnumForUnknownId(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public EnumForUnknownId(KaitaiStream _io, KaitaiStruct _parent, EnumForUnknownId _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.one = Animal.byId(this._io.readU1());
    }
    private Animal one;
    private EnumForUnknownId _root;
    private KaitaiStruct _parent;
    public Animal one() { return one; }
    public EnumForUnknownId _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
