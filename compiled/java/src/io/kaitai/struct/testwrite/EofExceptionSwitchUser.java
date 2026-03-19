// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class EofExceptionSwitchUser extends KaitaiStruct.ReadWrite {
    public static EofExceptionSwitchUser fromFile(String fileName) throws IOException {
        return new EofExceptionSwitchUser(new ByteBufferKaitaiStream(fileName));
    }
    public EofExceptionSwitchUser() {
        this(null, null, null);
    }

    public EofExceptionSwitchUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionSwitchUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionSwitchUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EofExceptionSwitchUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.code = this._io.readU2le();
        switch (code()) {
        case 2: {
            this.data = new Two(this._io, this, _root);
            ((Two) (this.data))._read();
            break;
        }
        case 511: {
            this.data = new One(this._io, this, _root);
            ((One) (this.data))._read();
            break;
        }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        switch (code()) {
        case 2: {
            ((Two) (this.data))._fetchInstances();
            break;
        }
        case 511: {
            ((One) (this.data))._fetchInstances();
            break;
        }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.code);
        switch (code()) {
        case 2: {
            ((Two) (this.data))._write_Seq(this._io);
            break;
        }
        case 511: {
            ((One) (this.data))._write_Seq(this._io);
            break;
        }
        }
    }

    public void _check() {
        switch (code()) {
        case 2: {
            if (!Objects.equals(((EofExceptionSwitchUser.Two) (this.data))._root(), _root()))
                throw new ConsistencyError("data", _root(), ((EofExceptionSwitchUser.Two) (this.data))._root());
            if (!Objects.equals(((EofExceptionSwitchUser.Two) (this.data))._parent(), this))
                throw new ConsistencyError("data", this, ((EofExceptionSwitchUser.Two) (this.data))._parent());
            break;
        }
        case 511: {
            if (!Objects.equals(((EofExceptionSwitchUser.One) (this.data))._root(), _root()))
                throw new ConsistencyError("data", _root(), ((EofExceptionSwitchUser.One) (this.data))._root());
            if (!Objects.equals(((EofExceptionSwitchUser.One) (this.data))._parent(), this))
                throw new ConsistencyError("data", this, ((EofExceptionSwitchUser.One) (this.data))._parent());
            break;
        }
        }
        _dirty = false;
    }
    public static class One extends KaitaiStruct.ReadWrite {
        public static One fromFile(String fileName) throws IOException {
            return new One(new ByteBufferKaitaiStream(fileName));
        }
        public One() {
            this(null, null, null);
        }

        public One(KaitaiStream _io) {
            this(_io, null, null);
        }

        public One(KaitaiStream _io, EofExceptionSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, EofExceptionSwitchUser _parent, EofExceptionSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.val = this._io.readS2le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeS2le(this.val);
        }

        public void _check() {
            _dirty = false;
        }
        public short val() { return val; }
        public void setVal(short _v) { _dirty = true; val = _v; }
        public EofExceptionSwitchUser _root() { return _root; }
        public void set_root(EofExceptionSwitchUser _v) { _dirty = true; _root = _v; }
        public EofExceptionSwitchUser _parent() { return _parent; }
        public void set_parent(EofExceptionSwitchUser _v) { _dirty = true; _parent = _v; }
        private short val;
        private EofExceptionSwitchUser _root;
        private EofExceptionSwitchUser _parent;
    }
    public static class Two extends KaitaiStruct.ReadWrite {
        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }
        public Two() {
            this(null, null, null);
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, EofExceptionSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, EofExceptionSwitchUser _parent, EofExceptionSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.val = this._io.readU2le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU2le(this.val);
        }

        public void _check() {
            _dirty = false;
        }
        public int val() { return val; }
        public void setVal(int _v) { _dirty = true; val = _v; }
        public EofExceptionSwitchUser _root() { return _root; }
        public void set_root(EofExceptionSwitchUser _v) { _dirty = true; _root = _v; }
        public EofExceptionSwitchUser _parent() { return _parent; }
        public void set_parent(EofExceptionSwitchUser _v) { _dirty = true; _parent = _v; }
        private int val;
        private EofExceptionSwitchUser _root;
        private EofExceptionSwitchUser _parent;
    }
    public int code() { return code; }
    public void setCode(int _v) { _dirty = true; code = _v; }
    public KaitaiStruct.ReadWrite data() { return data; }
    public void setData(KaitaiStruct.ReadWrite _v) { _dirty = true; data = _v; }
    public EofExceptionSwitchUser _root() { return _root; }
    public void set_root(EofExceptionSwitchUser _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private int code;
    private KaitaiStruct.ReadWrite data;
    private EofExceptionSwitchUser _root;
    private KaitaiStruct.ReadWrite _parent;
}
