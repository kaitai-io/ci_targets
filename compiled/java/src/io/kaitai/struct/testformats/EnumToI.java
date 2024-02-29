// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumToI extends KaitaiStruct {
    public static EnumToI fromFile(String fileName) throws IOException {
        return new EnumToI(new ByteBufferKaitaiStream(fileName));
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

    public EnumToI(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToI(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumToI(KaitaiStream _io, KaitaiStruct _parent, EnumToI _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Animal.byId(this._io.readU4le());
        this.pet2 = Animal.byId(this._io.readU4le());
    }
    private Integer pet1I;
    public Integer pet1I() {
        if (this.pet1I != null)
            return this.pet1I;
        int _tmp = (int) (pet1().id());
        this.pet1I = _tmp;
        return this.pet1I;
    }
    private Boolean oneLtTwo;
    public Boolean oneLtTwo() {
        if (this.oneLtTwo != null)
            return this.oneLtTwo;
        boolean _tmp = (boolean) (pet1().id() < pet2().id());
        this.oneLtTwo = _tmp;
        return this.oneLtTwo;
    }
    private Boolean pet1EqInt;
    public Boolean pet1EqInt() {
        if (this.pet1EqInt != null)
            return this.pet1EqInt;
        boolean _tmp = (boolean) (pet1().id() == 7);
        this.pet1EqInt = _tmp;
        return this.pet1EqInt;
    }
    private String pet1IToS;
    public String pet1IToS() {
        if (this.pet1IToS != null)
            return this.pet1IToS;
        this.pet1IToS = Long.toString(pet1().id(), 10);
        return this.pet1IToS;
    }
    private Boolean pet2EqInt;
    public Boolean pet2EqInt() {
        if (this.pet2EqInt != null)
            return this.pet2EqInt;
        boolean _tmp = (boolean) (pet2().id() == 5);
        this.pet2EqInt = _tmp;
        return this.pet2EqInt;
    }
    private Integer pet1Mod;
    public Integer pet1Mod() {
        if (this.pet1Mod != null)
            return this.pet1Mod;
        int _tmp = (int) ((pet1().id() + 32768));
        this.pet1Mod = _tmp;
        return this.pet1Mod;
    }
    private Animal pet1;
    private Animal pet2;
    private EnumToI _root;
    private KaitaiStruct _parent;
    public Animal pet1() { return pet1; }
    public Animal pet2() { return pet2; }
    public EnumToI _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
