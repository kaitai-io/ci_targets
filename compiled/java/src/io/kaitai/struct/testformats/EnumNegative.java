// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumNegative extends KaitaiStruct {
    public static EnumNegative fromFile(String fileName) throws IOException {
        return new EnumNegative(new ByteBufferKaitaiStream(fileName));
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
        NEGATIVE_ONE(-1),
        POSITIVE_ONE(1);

        private final long id;
        private static final HashMap<Long, IConstants> variants = new HashMap<>(2);
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

    public EnumNegative(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumNegative(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumNegative(KaitaiStream _io, KaitaiStruct _parent, EnumNegative _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.f1 = Constants.byId(this._io.readS1());
        this.f2 = Constants.byId(this._io.readS1());
    }

    public void _fetchInstances() {
    }
    public IConstants f1() { return f1; }
    public IConstants f2() { return f2; }
    public EnumNegative _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private IConstants f1;
    private IConstants f2;
    private EnumNegative _root;
    private KaitaiStruct _parent;
}
