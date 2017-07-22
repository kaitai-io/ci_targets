// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilS4 : KaitaiStruct
    {
        public static RepeatUntilS4 FromFile(string fileName)
        {
            return new RepeatUntilS4(new KaitaiStream(fileName));
        }

        public RepeatUntilS4(KaitaiStream io, KaitaiStruct parent = null, RepeatUntilS4 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _entries = new List<int>();
            {
                int M_;
                do {
                    M_ = m_io.ReadS4le();
                    _entries.Add(M_);
                } while (!(M_ == -1));
            }
            _afterall = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(0, false, true, true));
        }
        private List<int> _entries;
        private string _afterall;
        private RepeatUntilS4 m_root;
        private KaitaiStruct m_parent;
        public List<int> Entries { get { return _entries; } }
        public string Afterall { get { return _afterall; } }
        public RepeatUntilS4 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
