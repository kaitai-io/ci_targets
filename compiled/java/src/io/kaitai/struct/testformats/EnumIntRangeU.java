// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumIntRangeU extends KaitaiStruct {
    public static EnumIntRangeU fromFile(String fileName) throws IOException {
        return new EnumIntRangeU(new ByteBufferKaitaiStream(fileName));
    }

    public enum Constants {
        ZERO(0),
        INT_MAX(4294967295);

        private final long id;
        Constants(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Constants> byId = new HashMap<Long, Constants>(2);
        static {
            for (Constants e : Constants.values())
                byId.put(e.id(), e);
        }
        public static Constants byId(long id) { return byId.get(id); }
    }

    public EnumIntRangeU(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumIntRangeU(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumIntRangeU(KaitaiStream _io, KaitaiStruct _parent, EnumIntRangeU _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.f1 = Constants.byId(this._io.readU4be());
        this.f2 = Constants.byId(this._io.readU4be());
    }
    private Constants f1;
    private Constants f2;
    private EnumIntRangeU _root;
    private KaitaiStruct _parent;
    public Constants f1() { return f1; }
    public Constants f2() { return f2; }
    public EnumIntRangeU _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
