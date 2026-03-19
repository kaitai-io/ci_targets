// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosBitsB4 : KaitaiStruct
    {
        public static RepeatEosBitsB4 FromFile(string fileName)
        {
            return new RepeatEosBitsB4(new KaitaiStream(fileName));
        }

        public RepeatEosBitsB4(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosBitsB4 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _nibbles = new List<ulong>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _nibbles.Add(m_io.ReadBitsIntBe(4));
                    i++;
                }
            }
        }
        public List<ulong> Nibbles { get { return _nibbles; } }
        public RepeatEosBitsB4 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<ulong> _nibbles;
        private RepeatEosBitsB4 m_root;
        private KaitaiStruct m_parent;
    }
}
