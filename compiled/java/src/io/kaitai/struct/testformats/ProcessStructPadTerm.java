// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessStructPadTerm extends KaitaiStruct {
    public static ProcessStructPadTerm fromFile(String fileName) throws IOException {
        return new ProcessStructPadTerm(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessStructPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessStructPadTerm(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessStructPadTerm(KaitaiStream _io, KaitaiStruct _parent, ProcessStructPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw__raw_strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this._raw_strPad = KaitaiStream.processXor(this._raw__raw_strPad, ((byte) 21));
        KaitaiStream _io__raw_strPad = new ByteBufferKaitaiStream(this._raw_strPad);
        this.strPad = new BytesWrapper(_io__raw_strPad, this, _root);
        this._raw__raw_strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this._raw_strTerm = KaitaiStream.processXor(this._raw__raw_strTerm, ((byte) 21));
        KaitaiStream _io__raw_strTerm = new ByteBufferKaitaiStream(this._raw_strTerm);
        this.strTerm = new BytesWrapper(_io__raw_strTerm, this, _root);
        this._raw__raw_strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this._raw_strTermAndPad = KaitaiStream.processXor(this._raw__raw_strTermAndPad, ((byte) 21));
        KaitaiStream _io__raw_strTermAndPad = new ByteBufferKaitaiStream(this._raw_strTermAndPad);
        this.strTermAndPad = new BytesWrapper(_io__raw_strTermAndPad, this, _root);
        this._raw__raw_strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true);
        this._raw_strTermInclude = KaitaiStream.processXor(this._raw__raw_strTermInclude, ((byte) 21));
        KaitaiStream _io__raw_strTermInclude = new ByteBufferKaitaiStream(this._raw_strTermInclude);
        this.strTermInclude = new BytesWrapper(_io__raw_strTermInclude, this, _root);
    }

    public void _fetchInstances() {
        this.strPad._fetchInstances();
        this.strTerm._fetchInstances();
        this.strTermAndPad._fetchInstances();
        this.strTermInclude._fetchInstances();
    }
    public static class BytesWrapper extends KaitaiStruct {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
        }

        public BytesWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BytesWrapper(KaitaiStream _io, ProcessStructPadTerm _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, ProcessStructPadTerm _parent, ProcessStructPadTerm _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readBytesFull();
        }

        public void _fetchInstances() {
        }
        public byte[] value() { return value; }
        public ProcessStructPadTerm _root() { return _root; }
        public ProcessStructPadTerm _parent() { return _parent; }
        private byte[] value;
        private ProcessStructPadTerm _root;
        private ProcessStructPadTerm _parent;
    }
    public BytesWrapper strPad() { return strPad; }
    public BytesWrapper strTerm() { return strTerm; }
    public BytesWrapper strTermAndPad() { return strTermAndPad; }
    public BytesWrapper strTermInclude() { return strTermInclude; }
    public ProcessStructPadTerm _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_strPad() { return _raw_strPad; }
    public byte[] _raw__raw_strPad() { return _raw__raw_strPad; }
    public byte[] _raw_strTerm() { return _raw_strTerm; }
    public byte[] _raw__raw_strTerm() { return _raw__raw_strTerm; }
    public byte[] _raw_strTermAndPad() { return _raw_strTermAndPad; }
    public byte[] _raw__raw_strTermAndPad() { return _raw__raw_strTermAndPad; }
    public byte[] _raw_strTermInclude() { return _raw_strTermInclude; }
    public byte[] _raw__raw_strTermInclude() { return _raw__raw_strTermInclude; }
    private BytesWrapper strPad;
    private BytesWrapper strTerm;
    private BytesWrapper strTermAndPad;
    private BytesWrapper strTermInclude;
    private ProcessStructPadTerm _root;
    private KaitaiStruct _parent;
    private byte[] _raw_strPad;
    private byte[] _raw__raw_strPad;
    private byte[] _raw_strTerm;
    private byte[] _raw__raw_strTerm;
    private byte[] _raw_strTermAndPad;
    private byte[] _raw__raw_strTermAndPad;
    private byte[] _raw_strTermInclude;
    private byte[] _raw__raw_strTermInclude;
}
