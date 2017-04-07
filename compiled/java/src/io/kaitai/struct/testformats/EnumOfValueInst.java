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

public class EnumOfValueInst extends KaitaiStruct {
    public static EnumOfValueInst fromFile(String fileName) throws IOException {
        return new EnumOfValueInst(new KaitaiStream(fileName));
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

    public EnumOfValueInst(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public EnumOfValueInst(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public EnumOfValueInst(KaitaiStream _io, KaitaiStruct _parent, EnumOfValueInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.pet1 = Animal.byId(this._io.readU4le());
        this.pet2 = Animal.byId(this._io.readU4le());
    }
    private Animal pet3;
    public Animal pet3() {
        if (this.pet3 != null)
            return this.pet3;
        this.pet3 = Animal.byId((pet1() == Animal.CAT ? 4 : 12));
        return this.pet3;
    }
    private Animal pet4;
    public Animal pet4() {
        if (this.pet4 != null)
            return this.pet4;
        this.pet4 = (pet1() == Animal.CAT ? Animal.DOG : Animal.CHICKEN);
        return this.pet4;
    }
    private Animal pet1;
    private Animal pet2;
    private EnumOfValueInst _root;
    private KaitaiStruct _parent;
    public Animal pet1() { return pet1; }
    public Animal pet2() { return pet2; }
    public EnumOfValueInst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
