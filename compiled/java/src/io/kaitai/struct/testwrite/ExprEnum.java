// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class ExprEnum extends KaitaiStruct.ReadWrite {
    public static ExprEnum fromFile(String fileName) throws IOException {
        return new ExprEnum(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        DOG(4),
        CAT(7),
        CHICKEN(12),
        BOOM(102);

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
    public ExprEnum() {
        this(null, null, null);
    }

    public ExprEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU1(this.one);
    }

    public void _check() {
    }
    private Animal constDog;
    public Animal constDog() {
        if (this.constDog != null)
            return this.constDog;
        this.constDog = Animal.byId(4);
        return this.constDog;
    }
    public void _invalidateConstDog() { this.constDog = null; }
    private Animal derivedBoom;
    public Animal derivedBoom() {
        if (this.derivedBoom != null)
            return this.derivedBoom;
        this.derivedBoom = Animal.byId(one());
        return this.derivedBoom;
    }
    public void _invalidateDerivedBoom() { this.derivedBoom = null; }
    private Animal derivedDog;
    public Animal derivedDog() {
        if (this.derivedDog != null)
            return this.derivedDog;
        this.derivedDog = Animal.byId(one() - 98);
        return this.derivedDog;
    }
    public void _invalidateDerivedDog() { this.derivedDog = null; }
    private int one;
    private ExprEnum _root;
    private KaitaiStruct.ReadWrite _parent;
    public int one() { return one; }
    public void setOne(int _v) { one = _v; }
    public ExprEnum _root() { return _root; }
    public void set_root(ExprEnum _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
