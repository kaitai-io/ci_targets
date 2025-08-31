// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosTermBytes : KaitaiStruct
    {
        public static RepeatEosTermBytes FromFile(string fileName)
        {
            return new RepeatEosTermBytes(new KaitaiStream(fileName));
        }

        public RepeatEosTermBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosTermBytes p__root = null) : base(p__io)
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
                while (!m_io.IsEof) {
                    _records.Add(m_io.ReadBytesTerm(178, true, true, true));
                    i++;
                }
            }
        }
        private List<byte[]> _records;
        private RepeatEosTermBytes m_root;
        private KaitaiStruct m_parent;
        public List<byte[]> Records { get { return _records; } }
        public RepeatEosTermBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
