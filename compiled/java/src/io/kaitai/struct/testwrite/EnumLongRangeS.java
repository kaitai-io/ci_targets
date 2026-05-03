// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumLongRangeS extends KaitaiStruct.ReadWrite {
    public static EnumLongRangeS fromFile(String fileName) throws IOException {
        return new EnumLongRangeS(new ByteBufferKaitaiStream(fileName));
    }

    public interface IConstants extends IKaitaiEnum {
        public static final class Unknown extends IKaitaiEnum.Unknown implements IConstants {
            Unknown(long id) { super(id); }

            @Override
            public String toString() { return "Constants(" + this.id + ")"; }

            @Override
            public int hashCode() {
                final int result = 31 + "Constants".hashCode();
                return 31 * result + Long.hashCode(this.id);
            }

            @Override
            public boolean equals(Object other) {
                return other instanceof IConstants.Unknown && this.id == ((IConstants.Unknown)other).id;
            }
        }
    }
    public enum Constants implements IConstants {
        LONG_MIN(-9223372036854775808L),
        INT_BELOW_MIN(-2147483649L),
        INT_MIN(-2147483648),
        ZERO(0),
        INT_MAX(2147483647),
        INT_OVER_MAX(2147483648L),
        LONG_MAX(9223372036854775807L);

        private final long id;
        private static final HashMap<Long, IConstants> variants = new HashMap<>(7);
        static {
            for (Constants e : values()) {
                variants.put(e.id, e);
            }
        }

        public static IConstants byId(final long id) {
            return variants.computeIfAbsent(id, _id -> new IConstants.Unknown(id));
        }

        private Constants(long id) { this.id = id; }

        @Override
        public long id() { return id; }
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
    public IConstants f1() { return f1; }
    public void setF1(IConstants _v) { _dirty = true; f1 = _v; }
    public IConstants f2() { return f2; }
    public void setF2(IConstants _v) { _dirty = true; f2 = _v; }
    public IConstants f3() { return f3; }
    public void setF3(IConstants _v) { _dirty = true; f3 = _v; }
    public IConstants f4() { return f4; }
    public void setF4(IConstants _v) { _dirty = true; f4 = _v; }
    public IConstants f5() { return f5; }
    public void setF5(IConstants _v) { _dirty = true; f5 = _v; }
    public IConstants f6() { return f6; }
    public void setF6(IConstants _v) { _dirty = true; f6 = _v; }
    public IConstants f7() { return f7; }
    public void setF7(IConstants _v) { _dirty = true; f7 = _v; }
    public EnumLongRangeS _root() { return _root; }
    public void set_root(EnumLongRangeS _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private IConstants f1;
    private IConstants f2;
    private IConstants f3;
    private IConstants f4;
    private IConstants f5;
    private IConstants f6;
    private IConstants f7;
    private EnumLongRangeS _root;
    private KaitaiStruct.ReadWrite _parent;
}
