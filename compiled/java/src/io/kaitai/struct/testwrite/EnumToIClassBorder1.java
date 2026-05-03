// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class EnumToIClassBorder1 extends KaitaiStruct.ReadWrite {
    public static EnumToIClassBorder1 fromFile(String fileName) throws IOException {
        return new EnumToIClassBorder1(new ByteBufferKaitaiStream(fileName));
    }

    public interface IAnimal extends IKaitaiEnum {
        public static final class Unknown extends IKaitaiEnum.Unknown implements IAnimal {
            Unknown(long id) { super(id); }

            @Override
            public String toString() { return "Animal(" + this.id + ")"; }

            @Override
            public int hashCode() {
                final int result = 31 + "Animal".hashCode();
                return 31 * result + Long.hashCode(this.id);
            }

            @Override
            public boolean equals(Object other) {
                return other instanceof IAnimal.Unknown && this.id == ((IAnimal.Unknown)other).id;
            }
        }
    }
    public enum Animal implements IAnimal {
        DOG(4),
        CAT(7),
        CHICKEN(12);

        private final long id;
        private static final HashMap<Long, IAnimal> variants = new HashMap<>(3);
        static {
            for (Animal e : values()) {
                variants.put(e.id, e);
            }
        }

        public static IAnimal byId(final long id) {
            return variants.computeIfAbsent(id, _id -> new IAnimal.Unknown(id));
        }

        private Animal(long id) { this.id = id; }

        @Override
        public long id() { return id; }
    }
    public EnumToIClassBorder1() {
        this(null, null, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumToIClassBorder1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pet1 = Animal.byId(this._io.readU4le());
        this.pet2 = Animal.byId(this._io.readU4le());
        _dirty = false;
    }

    public void _fetchInstances() {
        checker();
        if (this.checker != null) {
            this.checker._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteChecker = _enabledChecker;
        this._io.writeU4le(((Number) (this.pet1.id())).longValue());
        this._io.writeU4le(((Number) (this.pet2.id())).longValue());
    }

    public void _check() {
        if (_enabledChecker) {
            if (!Objects.equals(this.checker.parent(), _root()))
                throw new ConsistencyError("checker", _root(), this.checker.parent());
        }
        _dirty = false;
    }
    public EnumToIClassBorder2 checker() {
        if (_shouldWriteChecker)
            _writeChecker();
        if (this.checker != null)
            return this.checker;
        if (!_enabledChecker)
            return null;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.checker = new EnumToIClassBorder2(this._io, _root());
        this.checker._read();
        this._io.seek(_pos);
        return this.checker;
    }
    public void setChecker(EnumToIClassBorder2 _v) { _dirty = true; checker = _v; }
    public void setChecker_Enabled(boolean _v) { _dirty = true; _enabledChecker = _v; }

    private void _writeChecker() {
        _shouldWriteChecker = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.checker._write_Seq(this._io);
        this._io.seek(_pos);
    }
    public IAnimal someDog() {
        if (this.someDog != null)
            return this.someDog;
        this.someDog = Animal.byId(4);
        return this.someDog;
    }
    public void _invalidateSomeDog() { this.someDog = null; }
    public IAnimal pet1() { return pet1; }
    public void setPet1(IAnimal _v) { _dirty = true; pet1 = _v; }
    public IAnimal pet2() { return pet2; }
    public void setPet2(IAnimal _v) { _dirty = true; pet2 = _v; }
    public EnumToIClassBorder1 _root() { return _root; }
    public void set_root(EnumToIClassBorder1 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private EnumToIClassBorder2 checker;
    private boolean _shouldWriteChecker = false;
    private boolean _enabledChecker = true;
    private IAnimal someDog;
    private IAnimal pet1;
    private IAnimal pet2;
    private EnumToIClassBorder1 _root;
    private KaitaiStruct.ReadWrite _parent;
}
