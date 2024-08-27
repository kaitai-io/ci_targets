// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class InstanceStdArray : KaitaiStruct
    {
        public static InstanceStdArray FromFile(string fileName)
        {
            return new InstanceStdArray(new KaitaiStream(fileName));
        }

        public InstanceStdArray(KaitaiStream p__io, KaitaiStruct p__parent = null, InstanceStdArray p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_entries = false;
            _read();
        }
        private void _read()
        {
            _ofs = m_io.ReadU4le();
            _entrySize = m_io.ReadU4le();
            _qtyEntries = m_io.ReadU4le();
        }
        private bool f_entries;
        private List<byte[]> _entries;
        public List<byte[]> Entries
        {
            get
            {
                if (f_entries)
                    return _entries;
                f_entries = true;
                long _pos = m_io.Pos;
                m_io.Seek(Ofs);
                _entries = new List<byte[]>();
                for (var i = 0; i < QtyEntries; i++)
                {
                    _entries.Add(m_io.ReadBytes(EntrySize));
                }
                m_io.Seek(_pos);
                return _entries;
            }
        }
        private uint _ofs;
        private uint _entrySize;
        private uint _qtyEntries;
        private InstanceStdArray m_root;
        private KaitaiStruct m_parent;
        public uint Ofs { get { return _ofs; } }
        public uint EntrySize { get { return _entrySize; } }
        public uint QtyEntries { get { return _qtyEntries; } }
        public InstanceStdArray M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
