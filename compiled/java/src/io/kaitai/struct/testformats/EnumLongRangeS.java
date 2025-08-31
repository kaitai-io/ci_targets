// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumLongRangeS extends KaitaiStruct {
    public static EnumLongRangeS fromFile(String fileName) throws IOException {
        return new EnumLongRangeS(new ByteBufferKaitaiStream(fileName));
    }

    public enum Constants {
        LONG_MIN(-9223372036854775808L),
        INT_BELOW_MIN(-2147483649L),
        INT_MIN(-2147483648),
        ZERO(0),
        INT_MAX(2147483647),
        INT_OVER_MAX(2147483648L),
        LONG_MAX(9223372036854775807L);

        private final long id;
        Constants(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Constants> byId = new HashMap<Long, Constants>(7);
        static {
            for (Constants e : Constants.values())
                byId.put(e.id(), e);
        }
        public static Constants byId(long id) { return byId.get(id); }
    }

    public EnumLongRangeS(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumLongRangeS(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumLongRangeS(KaitaiStream _io, KaitaiStruct _parent, EnumLongRangeS _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.f1 = Constants.byId(this._io.readS8be());
        this.f2 = Constants.byId(this._io.readS8be());
        this.f3 = Constants.byId(this._io.readS8be());
        this.f4 = Constants.byId(this._io.readS8be());
        this.f5 = Constants.byId(this._io.readS8be());
        this.f6 = Constants.byId(this._io.readS8be());
        this.f7 = Constants.byId(this._io.readS8be());
    }

    public void _fetchInstances() {
    }
    private Constants f1;
    private Constants f2;
    private Constants f3;
    private Constants f4;
    private Constants f5;
    private Constants f6;
    private Constants f7;
    private EnumLongRangeS _root;
    private KaitaiStruct _parent;
    public Constants f1() { return f1; }
    public Constants f2() { return f2; }
    public Constants f3() { return f3; }
    public Constants f4() { return f4; }
    public Constants f5() { return f5; }
    public Constants f6() { return f6; }
    public Constants f7() { return f7; }
    public EnumLongRangeS _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
