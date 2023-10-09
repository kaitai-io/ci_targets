// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumToIInvalid extends KaitaiStruct {
    public static EnumToIInvalid fromFile(String fileName) throws IOException {
        return new EnumToIInvalid(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        DOG(102),
        CAT(124);

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

    public EnumToIInvalid(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToIInvalid(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumToIInvalid(KaitaiStream _io, KaitaiStruct _parent, EnumToIInvalid _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Animal.byId(this._io.readU1());
        this.pet2 = Animal.byId(this._io.readU1());
    }
    private Boolean pet2EqIntT;
    public Boolean pet2EqIntT() {
        if (this.pet2EqIntT != null)
            return this.pet2EqIntT;
        boolean _tmp = (boolean) (pet2().id() == 111);
        this.pet2EqIntT = _tmp;
        return this.pet2EqIntT;
    }
    private Boolean pet2EqIntF;
    public Boolean pet2EqIntF() {
        if (this.pet2EqIntF != null)
            return this.pet2EqIntF;
        boolean _tmp = (boolean) (pet2().id() == 110);
        this.pet2EqIntF = _tmp;
        return this.pet2EqIntF;
    }
    private Integer pet2I;
    public Integer pet2I() {
        if (this.pet2I != null)
            return this.pet2I;
        int _tmp = (int) (pet2().id());
        this.pet2I = _tmp;
        return this.pet2I;
    }
    private Boolean oneLtTwo;
    public Boolean oneLtTwo() {
        if (this.oneLtTwo != null)
            return this.oneLtTwo;
        boolean _tmp = (boolean) (pet1().id() < pet2().id());
        this.oneLtTwo = _tmp;
        return this.oneLtTwo;
    }
    private Integer pet2Mod;
    public Integer pet2Mod() {
        if (this.pet2Mod != null)
            return this.pet2Mod;
        int _tmp = (int) ((pet2().id() + 32768));
        this.pet2Mod = _tmp;
        return this.pet2Mod;
    }
    private String pet2IToS;
    public String pet2IToS() {
        if (this.pet2IToS != null)
            return this.pet2IToS;
        this.pet2IToS = Long.toString(pet2().id(), 10);
        return this.pet2IToS;
    }
    private Animal pet1;
    private Animal pet2;
    private EnumToIInvalid _root;
    private KaitaiStruct _parent;
    public Animal pet1() { return pet1; }
    public Animal pet2() { return pet2; }
    public EnumToIInvalid _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
