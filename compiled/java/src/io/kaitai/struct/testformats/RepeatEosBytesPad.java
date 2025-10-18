// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatEosBytesPad extends KaitaiStruct {
    public static RepeatEosBytesPad fromFile(String fileName) throws IOException {
        return new RepeatEosBytesPad(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosBytesPad(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBytesPad(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBytesPad(KaitaiStream _io, KaitaiStruct _parent, RepeatEosBytesPad _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.records.add(KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }
    public List<byte[]> records() { return records; }
    public RepeatEosBytesPad _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<byte[]> records;
    private RepeatEosBytesPad _root;
    private KaitaiStruct _parent;
}
