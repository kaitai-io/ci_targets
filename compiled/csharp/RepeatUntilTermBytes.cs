// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilTermBytes : KaitaiStruct
    {
        public static RepeatUntilTermBytes FromFile(string fileName)
        {
            return new RepeatUntilTermBytes(new KaitaiStream(fileName));
        }

        public RepeatUntilTermBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatUntilTermBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records1 = new List<byte[]>();
            {
                var i = 0;
                byte[] M_;
                do {
                    M_ = m_io.ReadBytesTerm(170, false, true, true);
                    _records1.Add(M_);
                    i++;
                } while (!(M_.Length == 0));
            }
            _records2 = new List<byte[]>();
            {
                var i = 0;
                byte[] M_;
                do {
                    M_ = m_io.ReadBytesTerm(170, true, true, true);
                    _records2.Add(M_);
                    i++;
                } while (!((KaitaiStream.ByteArrayCompare(M_, new byte[] { 170 }) != 0)));
            }
            _records3 = new List<byte[]>();
            {
                var i = 0;
                byte[] M_;
                do {
                    M_ = m_io.ReadBytesTerm(85, false, false, true);
                    _records3.Add(M_);
                    i++;
                } while (!((KaitaiStream.ByteArrayCompare(M_, Records1[Records1.Count - 1]) == 0)));
            }
        }
        private List<byte[]> _records1;
        private List<byte[]> _records2;
        private List<byte[]> _records3;
        private RepeatUntilTermBytes m_root;
        private KaitaiStruct m_parent;
        public List<byte[]> Records1 { get { return _records1; } }
        public List<byte[]> Records2 { get { return _records2; } }
        public List<byte[]> Records3 { get { return _records3; } }
        public RepeatUntilTermBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
