// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class ParamsEnum extends KaitaiStruct {
    public static ParamsEnum fromFile(String fileName) throws IOException {
        return new ParamsEnum(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        CAT(1),
        DOG(2);

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

    public ParamsEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsEnum(KaitaiStream _io, KaitaiStruct _parent, ParamsEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = Animal.byId(this._io.readU1());
        this.invokeWithParam = new WithParam(this._io, this, _root, one());
    }
    public static class WithParam extends KaitaiStruct {

        public WithParam(KaitaiStream _io, Animal enumeratedOne) {
            this(_io, null, null, enumeratedOne);
        }

        public WithParam(KaitaiStream _io, ParamsEnum _parent, Animal enumeratedOne) {
            this(_io, _parent, null, enumeratedOne);
        }

        public WithParam(KaitaiStream _io, ParamsEnum _parent, ParamsEnum _root, Animal enumeratedOne) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.enumeratedOne = enumeratedOne;
            _read();
        }
        private void _read() {
        }
        private Boolean isCat;
        public Boolean isCat() {
            if (this.isCat != null)
                return this.isCat;
            boolean _tmp = (boolean) (enumeratedOne() == ParamsEnum.Animal.CAT);
            this.isCat = _tmp;
            return this.isCat;
        }
        private Animal enumeratedOne;
        private ParamsEnum _root;
        private ParamsEnum _parent;
        public Animal enumeratedOne() { return enumeratedOne; }
        public ParamsEnum _root() { return _root; }
        public ParamsEnum _parent() { return _parent; }
    }
    private Animal one;
    private WithParam invokeWithParam;
    private ParamsEnum _root;
    private KaitaiStruct _parent;
    public Animal one() { return one; }
    public WithParam invokeWithParam() { return invokeWithParam; }
    public ParamsEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
