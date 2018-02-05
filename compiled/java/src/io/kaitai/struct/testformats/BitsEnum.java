// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class BitsEnum extends KaitaiStruct {
    public static BitsEnum fromFile(String fileName) throws IOException {
        return new BitsEnum(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        CAT(0),
        DOG(1),
        HORSE(4),
        PLATYPUS(5);

        private final long id;
        Animal(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(4);
        static {
            for (Animal e : Animal.values())
                byId.put(e.id(), e);
        }
        public static Animal byId(long id) { return byId.get(id); }
    }

    public BitsEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsEnum(KaitaiStream _io, KaitaiStruct _parent, BitsEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = Animal.byId(this._io.readBitsInt(4));
        this.two = Animal.byId(this._io.readBitsInt(8));
        this.three = Animal.byId(this._io.readBitsInt(1));
    }
    private Animal one;
    private Animal two;
    private Animal three;
    private BitsEnum _root;
    private KaitaiStruct _parent;
    public Animal one() { return one; }
    public Animal two() { return two; }
    public Animal three() { return three; }
    public BitsEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
