// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class ExprEnum extends KaitaiStruct {
    public static ExprEnum fromFile(String fileName) throws IOException {
        return new ExprEnum(new KaitaiStream(fileName));
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

    public ExprEnum(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public ExprEnum(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public ExprEnum(KaitaiStream _io, KaitaiStruct _parent, ExprEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
    }
    private Animal constDog;
    public Animal constDog() {
        if (this.constDog != null)
            return this.constDog;
        this.constDog = Animal.byId(4);
        return this.constDog;
    }
    private Animal derivedBoom;
    public Animal derivedBoom() {
        if (this.derivedBoom != null)
            return this.derivedBoom;
        this.derivedBoom = Animal.byId(one());
        return this.derivedBoom;
    }
    private Animal derivedDog;
    public Animal derivedDog() {
        if (this.derivedDog != null)
            return this.derivedDog;
        this.derivedDog = Animal.byId((one() - 98));
        return this.derivedDog;
    }
    private int one;
    private ExprEnum _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public ExprEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
