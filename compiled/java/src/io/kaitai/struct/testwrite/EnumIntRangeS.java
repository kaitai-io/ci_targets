// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumIntRangeS extends KaitaiStruct.ReadWrite {
    public static EnumIntRangeS fromFile(String fileName) throws IOException {
        return new EnumIntRangeS(new ByteBufferKaitaiStream(fileName));
    }

    public enum Constants {
        INT_MIN(-2147483648),
        ZERO(0),
        INT_MAX(2147483647);

        private final long id;
        Constants(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Constants> byId = new HashMap<Long, Constants>(3);
        static {
            for (Constants e : Constants.values())
                byId.put(e.id(), e);
        }
        public static Constants byId(long id) { return byId.get(id); }
    }
    public EnumIntRangeS() {
        this(null, null, null);
    }

    public EnumIntRangeS(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumIntRangeS(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumIntRangeS(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumIntRangeS _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.f1 = Constants.byId(this._io.readS4be());
        this.f2 = Constants.byId(this._io.readS4be());
        this.f3 = Constants.byId(this._io.readS4be());
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeS4be(((Number) (this.f1.id())).intValue());
        this._io.writeS4be(((Number) (this.f2.id())).intValue());
        this._io.writeS4be(((Number) (this.f3.id())).intValue());
    }

    public void _check() {
        _dirty = false;
    }
    private Constants f1;
    private Constants f2;
    private Constants f3;
    private EnumIntRangeS _root;
    private KaitaiStruct.ReadWrite _parent;
    public Constants f1() { return f1; }
    public void setF1(Constants _v) { _dirty = true; f1 = _v; }
    public Constants f2() { return f2; }
    public void setF2(Constants _v) { _dirty = true; f2 = _v; }
    public Constants f3() { return f3; }
    public void setF3(Constants _v) { _dirty = true; f3 = _v; }
    public EnumIntRangeS _root() { return _root; }
    public void set_root(EnumIntRangeS _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
