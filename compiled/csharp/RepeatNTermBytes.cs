// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNTermBytes : KaitaiStruct
    {
        public static RepeatNTermBytes FromFile(string fileName)
        {
            return new RepeatNTermBytes(new KaitaiStream(fileName));
        }

        public RepeatNTermBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNTermBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records1 = new List<byte[]>();
            for (var i = 0; i < 2; i++)
            {
                _records1.Add(m_io.ReadBytesTerm(170, false, true, true));
            }
            _records2 = new List<byte[]>();
            for (var i = 0; i < 2; i++)
            {
                _records2.Add(m_io.ReadBytesTerm(170, true, true, true));
            }
            _records3 = new List<byte[]>();
            for (var i = 0; i < 2; i++)
            {
                _records3.Add(m_io.ReadBytesTerm(85, false, false, true));
            }
        }
        private List<byte[]> _records1;
        private List<byte[]> _records2;
        private List<byte[]> _records3;
        private RepeatNTermBytes m_root;
        private KaitaiStruct m_parent;
        public List<byte[]> Records1 { get { return _records1; } }
        public List<byte[]> Records2 { get { return _records2; } }
        public List<byte[]> Records3 { get { return _records3; } }
        public RepeatNTermBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
