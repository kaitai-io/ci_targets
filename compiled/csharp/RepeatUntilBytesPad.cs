// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilBytesPad : KaitaiStruct
    {
        public static RepeatUntilBytesPad FromFile(string fileName)
        {
            return new RepeatUntilBytesPad(new KaitaiStream(fileName));
        }

        public RepeatUntilBytesPad(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatUntilBytesPad p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            {
                var i = 0;
                byte[] M_;
                do {
                    M_ = KaitaiStream.BytesStripRight(m_io.ReadBytes(5), 170);
                    _records.Add(M_);
                    i++;
                } while (!(M_.Length == 5));
            }
        }
        public List<byte[]> Records { get { return _records; } }
        public RepeatUntilBytesPad M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte[]> _records;
        private RepeatUntilBytesPad m_root;
        private KaitaiStruct m_parent;
    }
}
