// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumLongRangeS extends KaitaiStruct {
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
    public IConstants f1() { return f1; }
    public IConstants f2() { return f2; }
    public IConstants f3() { return f3; }
    public IConstants f4() { return f4; }
    public IConstants f5() { return f5; }
    public IConstants f6() { return f6; }
    public IConstants f7() { return f7; }
    public EnumLongRangeS _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private IConstants f1;
    private IConstants f2;
    private IConstants f3;
    private IConstants f4;
    private IConstants f5;
    private IConstants f6;
    private IConstants f7;
    private EnumLongRangeS _root;
    private KaitaiStruct _parent;
}
