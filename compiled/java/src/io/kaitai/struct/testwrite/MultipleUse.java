// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class MultipleUse extends KaitaiStruct.ReadWrite {
    public static MultipleUse fromFile(String fileName) throws IOException {
        return new MultipleUse(new ByteBufferKaitaiStream(fileName));
    }
    public MultipleUse() {
        this(null, null, null);
    }

    public MultipleUse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public MultipleUse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public MultipleUse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, MultipleUse _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.t1 = new Type1(this._io, this, _root);
        this.t1._read();
        this.t2 = new Type2(this._io, this, _root);
        this.t2._read();
    }

    public void _fetchInstances() {
        this.t1._fetchInstances();
        this.t2._fetchInstances();
    }

    public void _write_Seq() {
        this.t1._write_Seq(this._io);
        this.t2._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.t1._root(), _root()))
            throw new ConsistencyError("t1", this.t1._root(), _root());
        if (!Objects.equals(this.t1._parent(), this))
            throw new ConsistencyError("t1", this.t1._parent(), this);
        if (!Objects.equals(this.t2._root(), _root()))
            throw new ConsistencyError("t2", this.t2._root(), _root());
        if (!Objects.equals(this.t2._parent(), this))
            throw new ConsistencyError("t2", this.t2._parent(), this);
    }
    public static class Multi extends KaitaiStruct.ReadWrite {
        public static Multi fromFile(String fileName) throws IOException {
            return new Multi(new ByteBufferKaitaiStream(fileName));
        }
        public Multi() {
            this(null, null, null);
        }

        public Multi(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Multi(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public Multi(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, MultipleUse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readS4le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeS4le(this.value);
        }

        public void _check() {
        }
        private int value;
        private MultipleUse _root;
        private KaitaiStruct.ReadWrite _parent;
        public int value() { return value; }
        public void setValue(int _v) { value = _v; }
        public MultipleUse _root() { return _root; }
        public void set_root(MultipleUse _v) { _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    }
    public static class Type1 extends KaitaiStruct.ReadWrite {
        public static Type1 fromFile(String fileName) throws IOException {
            return new Type1(new ByteBufferKaitaiStream(fileName));
        }
        public Type1() {
            this(null, null, null);
        }

        public Type1(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Type1(KaitaiStream _io, MultipleUse _parent) {
            this(_io, _parent, null);
        }

        public Type1(KaitaiStream _io, MultipleUse _parent, MultipleUse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.firstUse = new Multi(this._io, this, _root);
            this.firstUse._read();
        }

        public void _fetchInstances() {
            this.firstUse._fetchInstances();
        }

        public void _write_Seq() {
            this.firstUse._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.firstUse._root(), _root()))
                throw new ConsistencyError("first_use", this.firstUse._root(), _root());
            if (!Objects.equals(this.firstUse._parent(), this))
                throw new ConsistencyError("first_use", this.firstUse._parent(), this);
        }
        private Multi firstUse;
        private MultipleUse _root;
        private MultipleUse _parent;
        public Multi firstUse() { return firstUse; }
        public void setFirstUse(Multi _v) { firstUse = _v; }
        public MultipleUse _root() { return _root; }
        public void set_root(MultipleUse _v) { _root = _v; }
        public MultipleUse _parent() { return _parent; }
        public void set_parent(MultipleUse _v) { _parent = _v; }
    }
    public static class Type2 extends KaitaiStruct.ReadWrite {
        public static Type2 fromFile(String fileName) throws IOException {
            return new Type2(new ByteBufferKaitaiStream(fileName));
        }
        public Type2() {
            this(null, null, null);
        }

        public Type2(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Type2(KaitaiStream _io, MultipleUse _parent) {
            this(_io, _parent, null);
        }

        public Type2(KaitaiStream _io, MultipleUse _parent, MultipleUse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
        }

        public void _fetchInstances() {
            secondUse();
            this.secondUse._fetchInstances();
        }

        public void _write_Seq() {
            _writeSecondUse = _toWriteSecondUse;
        }

        public void _check() {
        }
        private Multi secondUse;
        private boolean _writeSecondUse = false;
        private boolean _toWriteSecondUse = true;
        public Multi secondUse() {
            if (_writeSecondUse)
                _writeSecondUse();
            if (this.secondUse != null)
                return this.secondUse;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.secondUse = new Multi(this._io, this, _root);
            this.secondUse._read();
            this._io.seek(_pos);
            return this.secondUse;
        }
        public void setSecondUse(Multi _v) { secondUse = _v; }
        public void setSecondUse_ToWrite(boolean _v) { _toWriteSecondUse = _v; }

        public void _writeSecondUse() {
            _writeSecondUse = false;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.secondUse._write_Seq(this._io);
            this._io.seek(_pos);
        }

        public void _checkSecondUse() {
            if (!Objects.equals(this.secondUse._root(), _root()))
                throw new ConsistencyError("second_use", this.secondUse._root(), _root());
            if (!Objects.equals(this.secondUse._parent(), this))
                throw new ConsistencyError("second_use", this.secondUse._parent(), this);
        }
        private MultipleUse _root;
        private MultipleUse _parent;
        public MultipleUse _root() { return _root; }
        public void set_root(MultipleUse _v) { _root = _v; }
        public MultipleUse _parent() { return _parent; }
        public void set_parent(MultipleUse _v) { _parent = _v; }
    }
    private Type1 t1;
    private Type2 t2;
    private MultipleUse _root;
    private KaitaiStruct.ReadWrite _parent;
    public Type1 t1() { return t1; }
    public void setT1(Type1 _v) { t1 = _v; }
    public Type2 t2() { return t2; }
    public void setT2(Type2 _v) { t2 = _v; }
    public MultipleUse _root() { return _root; }
    public void set_root(MultipleUse _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
