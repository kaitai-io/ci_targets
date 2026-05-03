// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumLongRangeU extends KaitaiStruct.ReadWrite {
    public static EnumLongRangeU fromFile(String fileName) throws IOException {
        return new EnumLongRangeU(new ByteBufferKaitaiStream(fileName));
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
        ZERO(0),
        INT_MAX(4294967295L),
        INT_OVER_MAX(4294967296L),
        LONG_MAX(0xffffffffffffffffL);

        private final long id;
        private static final HashMap<Long, IConstants> variants = new HashMap<>(4);
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
    public EnumLongRangeU() {
        this(null, null, null);
    }

    public EnumLongRangeU(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumLongRangeU(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumLongRangeU(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumLongRangeU _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.f1 = Constants.byId(this._io.readU8be());
        this.f2 = Constants.byId(this._io.readU8be());
        this.f3 = Constants.byId(this._io.readU8be());
        this.f4 = Constants.byId(this._io.readU8be());
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU8be(this.f1.id());
        this._io.writeU8be(this.f2.id());
        this._io.writeU8be(this.f3.id());
        this._io.writeU8be(this.f4.id());
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
    public EnumLongRangeU _root() { return _root; }
    public void set_root(EnumLongRangeU _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private IConstants f1;
    private IConstants f2;
    private IConstants f3;
    private IConstants f4;
    private EnumLongRangeU _root;
    private KaitaiStruct.ReadWrite _parent;
}
