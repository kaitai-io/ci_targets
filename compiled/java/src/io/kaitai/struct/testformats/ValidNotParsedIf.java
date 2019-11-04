// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidNotParsedIf extends KaitaiStruct {
    public static ValidNotParsedIf fromFile(String fileName) throws IOException {
        return new ValidNotParsedIf(new ByteBufferKaitaiStream(fileName));
    }

    public ValidNotParsedIf(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidNotParsedIf(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidNotParsedIf(KaitaiStream _io, KaitaiStruct _parent, ValidNotParsedIf _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        if (false) {
            this.notParsed = this._io.readU1();
        }
        if (!(notParsed() == 42)) {
            throw new KaitaiStream.ValidationNotEqualError(42, notParsed(), _io(), "/seq/0");
        }
        if (true) {
            this.parsed = this._io.readU1();
        }
        if (!(parsed() == 80)) {
            throw new KaitaiStream.ValidationNotEqualError(80, parsed(), _io(), "/seq/1");
        }
    }
    private Integer notParsed;
    private Integer parsed;
    private ValidNotParsedIf _root;
    private KaitaiStruct _parent;
    public Integer notParsed() { return notParsed; }
    public Integer parsed() { return parsed; }
    public ValidNotParsedIf _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
