// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class CombineEnum extends KaitaiStruct.ReadWrite {
    public static CombineEnum fromFile(String fileName) throws IOException {
        return new CombineEnum(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        PIG(7),
        HORSE(12);

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
    public CombineEnum() {
        this(null, null, null);
    }

    public CombineEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public CombineEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, CombineEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.enumU4 = Animal.byId(this._io.readU4le());
        this.enumU2 = Animal.byId(this._io.readU2le());
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(((Number) (this.enumU4.id())).longValue());
        this._io.writeU2le(((Number) (this.enumU2.id())).intValue());
    }

    public void _check() {
        _dirty = false;
    }
    public Animal enumU4U2() {
        if (this.enumU4U2 != null)
            return this.enumU4U2;
        this.enumU4U2 = (false ? enumU4() : enumU2());
        return this.enumU4U2;
    }
    public void _invalidateEnumU4U2() { this.enumU4U2 = null; }
    public Animal enumU4() { return enumU4; }
    public void setEnumU4(Animal _v) { _dirty = true; enumU4 = _v; }
    public Animal enumU2() { return enumU2; }
    public void setEnumU2(Animal _v) { _dirty = true; enumU2 = _v; }
    public CombineEnum _root() { return _root; }
    public void set_root(CombineEnum _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Animal enumU4U2;
    private Animal enumU4;
    private Animal enumU2;
    private CombineEnum _root;
    private KaitaiStruct.ReadWrite _parent;
}
