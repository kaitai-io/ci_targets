// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumLongRangeS extends KaitaiStruct.ReadWrite {
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
    public EnumLongRangeS() {
        this(null, null, null);
    }

    public EnumLongRangeS(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumLongRangeS(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumLongRangeS(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumLongRangeS _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.f1 = Constants.byId(this._io.readS8be());
        this.f2 = Constants.byId(this._io.readS8be());
        this.f3 = Constants.byId(this._io.readS8be());
        this.f4 = Constants.byId(this._io.readS8be());
        this.f5 = Constants.byId(this._io.readS8be());
        this.f6 = Constants.byId(this._io.readS8be());
        this.f7 = Constants.byId(this._io.readS8be());
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeS8be(this.f1.id());
        this._io.writeS8be(this.f2.id());
        this._io.writeS8be(this.f3.id());
        this._io.writeS8be(this.f4.id());
        this._io.writeS8be(this.f5.id());
        this._io.writeS8be(this.f6.id());
        this._io.writeS8be(this.f7.id());
    }

    public void _check() {
        _dirty = false;
    }
    private Constants f1;
    private Constants f2;
    private Constants f3;
    private Constants f4;
    private Constants f5;
    private Constants f6;
    private Constants f7;
    private EnumLongRangeS _root;
    private KaitaiStruct.ReadWrite _parent;
    public Constants f1() { return f1; }
    public void setF1(Constants _v) { _dirty = true; f1 = _v; }
    public Constants f2() { return f2; }
    public void setF2(Constants _v) { _dirty = true; f2 = _v; }
    public Constants f3() { return f3; }
    public void setF3(Constants _v) { _dirty = true; f3 = _v; }
    public Constants f4() { return f4; }
    public void setF4(Constants _v) { _dirty = true; f4 = _v; }
    public Constants f5() { return f5; }
    public void setF5(Constants _v) { _dirty = true; f5 = _v; }
    public Constants f6() { return f6; }
    public void setF6(Constants _v) { _dirty = true; f6 = _v; }
    public Constants f7() { return f7; }
    public void setF7(Constants _v) { _dirty = true; f7 = _v; }
    public EnumLongRangeS _root() { return _root; }
    public void set_root(EnumLongRangeS _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
