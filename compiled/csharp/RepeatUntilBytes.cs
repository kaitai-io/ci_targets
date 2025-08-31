// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilBytes : KaitaiStruct
    {
        public static RepeatUntilBytes FromFile(string fileName)
        {
            return new RepeatUntilBytes(new KaitaiStream(fileName));
        }

        public RepeatUntilBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatUntilBytes p__root = null) : base(p__io)
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
                    M_ = m_io.ReadBytes(5);
                    _records.Add(M_);
                    i++;
                } while (!(M_[0] == 170));
            }
        }
        private List<byte[]> _records;
        private RepeatUntilBytes m_root;
        private KaitaiStruct m_parent;
        public List<byte[]> Records { get { return _records; } }
        public RepeatUntilBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
