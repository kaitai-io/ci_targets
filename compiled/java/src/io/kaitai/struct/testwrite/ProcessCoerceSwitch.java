// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ProcessCoerceSwitch extends KaitaiStruct.ReadWrite {
    public static ProcessCoerceSwitch fromFile(String fileName) throws IOException {
        return new ProcessCoerceSwitch(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessCoerceSwitch() {
        this(null, null, null);
    }

    public ProcessCoerceSwitch(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCoerceSwitch(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessCoerceSwitch(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessCoerceSwitch _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.bufType = this._io.readU1();
        this.flag = this._io.readU1();
        if (flag() == 0) {
            switch (bufType()) {
            case 0: {
                this._raw_bufUnproc = this._io.readBytes(4);
                KaitaiStream _io__raw_bufUnproc = new ByteBufferKaitaiStream(this._raw_bufUnproc);
                this.bufUnproc = new Foo(_io__raw_bufUnproc, this, _root);
                ((Foo) (this.bufUnproc))._read();
                break;
            }
            default: {
                this.bufUnproc = this._io.readBytes(4);
                break;
            }
            }
        }
        if (flag() != 0) {
            switch (bufType()) {
            case 0: {
                this._raw__raw_bufProc = this._io.readBytes(4);
                this._raw_bufProc = KaitaiStream.processXor(this._raw__raw_bufProc, ((byte) 170));
                KaitaiStream _io__raw_bufProc = new ByteBufferKaitaiStream(this._raw_bufProc);
                this.bufProc = new Foo(_io__raw_bufProc, this, _root);
                ((Foo) (this.bufProc))._read();
                break;
            }
            default: {
                this._raw_bufProc = this._io.readBytes(4);
                this.bufProc = KaitaiStream.processXor(this._raw_bufProc, ((byte) 170));
                break;
            }
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        if (flag() == 0) {
            switch (bufType()) {
            case 0: {
                ((Foo) (this.bufUnproc))._fetchInstances();
                break;
            }
            default: {
                break;
            }
            }
        }
        if (flag() != 0) {
            switch (bufType()) {
            case 0: {
                ((Foo) (this.bufProc))._fetchInstances();
                break;
            }
            default: {
                break;
            }
            }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.bufType);
        this._io.writeU1(this.flag);
        if (flag() == 0) {
            switch (bufType()) {
            case 0: {
                final KaitaiStream _io__raw_bufUnproc = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_bufUnproc);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final ProcessCoerceSwitch _this = this;
                    _io__raw_bufUnproc.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_bufUnproc = _io__raw_bufUnproc.toByteArray();
                            if (((byte[]) (_this._raw_bufUnproc)).length != 4)
                                throw new ConsistencyError("raw(buf_unproc)", ((byte[]) (_this._raw_bufUnproc)).length, 4);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_bufUnproc)))));
                        }
                    });
                }
                ((Foo) (this.bufUnproc))._write_Seq(_io__raw_bufUnproc);
                break;
            }
            default: {
                this._io.writeBytes(((byte[]) (((byte[]) (this.bufUnproc)))));
                break;
            }
            }
        }
        if (flag() != 0) {
            switch (bufType()) {
            case 0: {
                final KaitaiStream _io__raw_bufProc = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_bufProc);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final int _processXorArg = 170;
                    final ProcessCoerceSwitch _this = this;
                    _io__raw_bufProc.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_bufProc = _io__raw_bufProc.toByteArray();
                            _this._raw__raw_bufProc = KaitaiStream.processXor(((byte[]) (_this._raw_bufProc)), ((Number) (_processXorArg)).byteValue());
                            if (((byte[]) (_this._raw__raw_bufProc)).length != 4)
                                throw new ConsistencyError("raw(buf_proc)", ((byte[]) (_this._raw__raw_bufProc)).length, 4);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw__raw_bufProc)))));
                        }
                    });
                }
                ((Foo) (this.bufProc))._write_Seq(_io__raw_bufProc);
                break;
            }
            default: {
                this._raw_bufProc = KaitaiStream.processXor(((byte[]) (this.bufProc)), ((Number) (170)).byteValue());
                if (((byte[]) (this._raw_bufProc)).length != 4)
                    throw new ConsistencyError("buf_proc", ((byte[]) (this._raw_bufProc)).length, 4);
                this._io.writeBytes(((byte[]) (((byte[]) (this._raw_bufProc)))));
                break;
            }
            }
        }
    }

    public void _check() {
        if (flag() == 0) {
            switch (bufType()) {
            case 0: {
                if (!Objects.equals(((ProcessCoerceSwitch.Foo) (this.bufUnproc))._root(), _root()))
                    throw new ConsistencyError("buf_unproc", ((ProcessCoerceSwitch.Foo) (this.bufUnproc))._root(), _root());
                if (!Objects.equals(((ProcessCoerceSwitch.Foo) (this.bufUnproc))._parent(), this))
                    throw new ConsistencyError("buf_unproc", ((ProcessCoerceSwitch.Foo) (this.bufUnproc))._parent(), this);
                break;
            }
            default: {
                if (((byte[]) (this.bufUnproc)).length != 4)
                    throw new ConsistencyError("buf_unproc", ((byte[]) (this.bufUnproc)).length, 4);
                break;
            }
            }
        }
        if (flag() != 0) {
            switch (bufType()) {
            case 0: {
                if (!Objects.equals(((ProcessCoerceSwitch.Foo) (this.bufProc))._root(), _root()))
                    throw new ConsistencyError("buf_proc", ((ProcessCoerceSwitch.Foo) (this.bufProc))._root(), _root());
                if (!Objects.equals(((ProcessCoerceSwitch.Foo) (this.bufProc))._parent(), this))
                    throw new ConsistencyError("buf_proc", ((ProcessCoerceSwitch.Foo) (this.bufProc))._parent(), this);
                break;
            }
            default: {
                break;
            }
            }
        }
        _dirty = false;
    }
    public static class Foo extends KaitaiStruct.ReadWrite {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }
        public Foo() {
            this(null, null, null);
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, ProcessCoerceSwitch _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, ProcessCoerceSwitch _parent, ProcessCoerceSwitch _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.bar = this._io.readBytes(4);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.bar);
        }

        public void _check() {
            if (this.bar.length != 4)
                throw new ConsistencyError("bar", this.bar.length, 4);
            _dirty = false;
        }
        private byte[] bar;
        private ProcessCoerceSwitch _root;
        private ProcessCoerceSwitch _parent;
        public byte[] bar() { return bar; }
        public void setBar(byte[] _v) { _dirty = true; bar = _v; }
        public ProcessCoerceSwitch _root() { return _root; }
        public void set_root(ProcessCoerceSwitch _v) { _dirty = true; _root = _v; }
        public ProcessCoerceSwitch _parent() { return _parent; }
        public void set_parent(ProcessCoerceSwitch _v) { _dirty = true; _parent = _v; }
    }
    private Object buf;
    public Object buf() {
        if (this.buf != null)
            return this.buf;
        this.buf = (flag() == 0 ? bufUnproc() : bufProc());
        return this.buf;
    }
    public void _invalidateBuf() { this.buf = null; }
    private int bufType;
    private int flag;
    private Object bufUnproc;
    private Object bufProc;
    private ProcessCoerceSwitch _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_bufUnproc;
    private byte[] _raw_bufProc;
    private byte[] _raw__raw_bufProc;
    public int bufType() { return bufType; }
    public void setBufType(int _v) { _dirty = true; bufType = _v; }
    public int flag() { return flag; }
    public void setFlag(int _v) { _dirty = true; flag = _v; }
    public Object bufUnproc() { return bufUnproc; }
    public void setBufUnproc(Object _v) { _dirty = true; bufUnproc = _v; }
    public Object bufProc() { return bufProc; }
    public void setBufProc(Object _v) { _dirty = true; bufProc = _v; }
    public ProcessCoerceSwitch _root() { return _root; }
    public void set_root(ProcessCoerceSwitch _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_bufUnproc() { return _raw_bufUnproc; }
    public void set_raw_BufUnproc(byte[] _v) { _dirty = true; _raw_bufUnproc = _v; }
    public byte[] _raw_bufProc() { return _raw_bufProc; }
    public void set_raw_BufProc(byte[] _v) { _dirty = true; _raw_bufProc = _v; }
    public byte[] _raw__raw_bufProc() { return _raw__raw_bufProc; }
    public void set_raw__raw_BufProc(byte[] _v) { _dirty = true; _raw__raw_bufProc = _v; }
}
