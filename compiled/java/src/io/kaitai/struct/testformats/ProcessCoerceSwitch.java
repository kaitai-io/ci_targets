// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessCoerceSwitch extends KaitaiStruct {
    public static ProcessCoerceSwitch fromFile(String fileName) throws IOException {
        return new ProcessCoerceSwitch(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessCoerceSwitch(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCoerceSwitch(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessCoerceSwitch(KaitaiStream _io, KaitaiStruct _parent, ProcessCoerceSwitch _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.bufType = this._io.readU1();
        this.flag = this._io.readU1();
        if (flag() == 0) {
            switch (bufType()) {
            case 0: {
                KaitaiStream _io_bufUnproc = this._io.substream(4);;
                this.bufUnproc = new Foo(_io_bufUnproc, this, _root);
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
                this._raw_bufProc = KaitaiStream.processXor(_raw__raw_bufProc, ((byte) (170)));
                KaitaiStream _io__raw_bufProc = new ByteBufferKaitaiStream(_raw_bufProc);
                this.bufProc = new Foo(_io__raw_bufProc, this, _root);
                break;
            }
            default: {
                this._raw_bufProc = this._io.readBytes(4);
                this.bufProc = KaitaiStream.processXor(_raw_bufProc, ((byte) (170)));
                break;
            }
            }
        }
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.bar = this._io.readBytes(4);
        }
        private byte[] bar;
        private ProcessCoerceSwitch _root;
        private ProcessCoerceSwitch _parent;
        public byte[] bar() { return bar; }
        public ProcessCoerceSwitch _root() { return _root; }
        public ProcessCoerceSwitch _parent() { return _parent; }
    }
    private Object buf;
    public Object buf() {
        if (this.buf != null)
            return this.buf;
        this.buf = (flag() == 0 ? bufUnproc() : bufProc());
        return this.buf;
    }
    private int bufType;
    private int flag;
    private Object bufUnproc;
    private Object bufProc;
    private ProcessCoerceSwitch _root;
    private KaitaiStruct _parent;
    private byte[] _raw_bufProc;
    private byte[] _raw__raw_bufProc;
    public int bufType() { return bufType; }
    public int flag() { return flag; }
    public Object bufUnproc() { return bufUnproc; }
    public Object bufProc() { return bufProc; }
    public ProcessCoerceSwitch _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_bufProc() { return _raw_bufProc; }
    public byte[] _raw__raw_bufProc() { return _raw__raw_bufProc; }
}
