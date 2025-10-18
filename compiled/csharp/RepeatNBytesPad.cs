// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNBytesPad : KaitaiStruct
    {
        public static RepeatNBytesPad FromFile(string fileName)
        {
            return new RepeatNBytesPad(new KaitaiStream(fileName));
        }

        public RepeatNBytesPad(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNBytesPad p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            for (var i = 0; i < 3; i++)
            {
                _records.Add(KaitaiStream.BytesStripRight(m_io.ReadBytes(5), 170));
            }
        }
        public List<byte[]> Records { get { return _records; } }
        public RepeatNBytesPad M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte[]> _records;
        private RepeatNBytesPad m_root;
        private KaitaiStruct m_parent;
    }
}
