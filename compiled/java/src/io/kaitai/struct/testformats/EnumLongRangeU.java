// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumLongRangeU extends KaitaiStruct {
    public static EnumLongRangeU fromFile(String fileName) throws IOException {
        return new EnumLongRangeU(new ByteBufferKaitaiStream(fileName));
    }

    public enum Constants {
        ZERO(0),
        INT_MAX(4294967295L),
        INT_OVER_MAX(4294967296L),
        LONG_MAX(9223372036854775807L);

        private final long id;
        Constants(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Constants> byId = new HashMap<Long, Constants>(4);
        static {
            for (Constants e : Constants.values())
                byId.put(e.id(), e);
        }
        public static Constants byId(long id) { return byId.get(id); }
    }

    public EnumLongRangeU(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumLongRangeU(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumLongRangeU(KaitaiStream _io, KaitaiStruct _parent, EnumLongRangeU _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.f1 = Constants.byId(this._io.readU8be());
        this.f2 = Constants.byId(this._io.readU8be());
        this.f3 = Constants.byId(this._io.readU8be());
        this.f4 = Constants.byId(this._io.readU8be());
    }
    private Constants f1;
    private Constants f2;
    private Constants f3;
    private Constants f4;
    private EnumLongRangeU _root;
    private KaitaiStruct _parent;
    public Constants f1() { return f1; }
    public Constants f2() { return f2; }
    public Constants f3() { return f3; }
    public Constants f4() { return f4; }
    public EnumLongRangeU _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
