// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ProcessBytesPadTerm extends KaitaiStruct {
    public static ProcessBytesPadTerm fromFile(String fileName) throws IOException {
        return new ProcessBytesPadTerm(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessBytesPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessBytesPadTerm(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessBytesPadTerm(KaitaiStream _io, KaitaiStruct _parent, ProcessBytesPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this.strPad = KaitaiStream.processXor(this._raw_strPad, ((byte) 21));
        this._raw_strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.strTerm = KaitaiStream.processXor(this._raw_strTerm, ((byte) 21));
        this._raw_strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.processXor(this._raw_strTermAndPad, ((byte) 21));
        this._raw_strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true);
        this.strTermInclude = KaitaiStream.processXor(this._raw_strTermInclude, ((byte) 21));
    }

    public void _fetchInstances() {
    }
    public byte[] strPad() { return strPad; }
    public byte[] strTerm() { return strTerm; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public byte[] strTermInclude() { return strTermInclude; }
    public ProcessBytesPadTerm _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_strPad() { return _raw_strPad; }
    public byte[] _raw_strTerm() { return _raw_strTerm; }
    public byte[] _raw_strTermAndPad() { return _raw_strTermAndPad; }
    public byte[] _raw_strTermInclude() { return _raw_strTermInclude; }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private ProcessBytesPadTerm _root;
    private KaitaiStruct _parent;
    private byte[] _raw_strPad;
    private byte[] _raw_strTerm;
    private byte[] _raw_strTermAndPad;
    private byte[] _raw_strTermInclude;
}
