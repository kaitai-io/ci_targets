// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BytesPadTermRoundtrip extends KaitaiStruct {
    public static BytesPadTermRoundtrip fromFile(String fileName) throws IOException {
        return new BytesPadTermRoundtrip(new ByteBufferKaitaiStream(fileName));
    }

    public BytesPadTermRoundtrip(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BytesPadTermRoundtrip(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BytesPadTermRoundtrip(KaitaiStream _io, KaitaiStruct _parent, BytesPadTermRoundtrip _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this.strTerm = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermInclude = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 46), (byte) 64, true);
    }

    public void _fetchInstances() {
    }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private BytesPadTermRoundtrip _root;
    private KaitaiStruct _parent;
    public byte[] strPad() { return strPad; }
    public byte[] strTerm() { return strTerm; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public byte[] strTermInclude() { return strTermInclude; }
    public BytesPadTermRoundtrip _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
